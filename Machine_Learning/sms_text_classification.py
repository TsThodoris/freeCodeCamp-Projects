#---------- SMS text Classifier (spam/not spam) ----------#
#import libraries
import tensorflow as tf
import pandas as pd
from tensorflow import keras
!pip install tensorflow-datasets
import tensorflow_datasets as tfds
import numpy as np
import matplotlib.pyplot as plt

# get data files
!wget https://cdn.freecodecamp.org/project-data/sms/train-data.tsv
!wget https://cdn.freecodecamp.org/project-data/sms/valid-data.tsv

train_file_path = "train-data.tsv"
test_file_path = "valid-data.tsv"

train_dataset = pd.read_csv(train_file_path,sep="\t",header=None,names=["type","msg"])
test_dataset = pd.read_csv(test_file_path,sep="\t",header=None,names=["type","msg"])

#convert text data to numerical
train_dataset['type'] = pd.factorize(train_dataset['type'])[0]
test_dataset['type'] = pd.factorize(test_dataset['type'])[0]

#separate dataset
train_labels = train_dataset['type'].values
train_ds = tf.data.Dataset.from_tensor_slices(
    (train_dataset['msg'].values,train_labels)
)

test_labels = test_dataset['type'].values
test_ds = tf.data.Dataset.from_tensor_slices(
    (test_dataset['msg'].values,test_labels)

)

#prepare dataset and text vectorization
BUFFER_SIZE = 100
BATCH_SIZE = 32
train_ds = train_ds.shuffle(BUFFER_SIZE).batch(BATCH_SIZE).prefetch(tf.data.AUTOTUNE)
test_ds = test_ds.batch(BATCH_SIZE).prefetch(tf.data.AUTOTUNE)
vec = tf.keras.layers.TextVectorization(
    output_mode='int',
    max_tokens=1000,
    output_sequence_length=1000
)

vec.adapt(train_ds.map(lambda text, label:text))

#model
model = tf.keras.Sequential([
    vec,
    tf.keras.layers.Embedding(
        len(vec.get_vocabulary()),
        64,
        mask_zero=True,
    ),
    tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(64,return_sequences=True)),
    tf.keras.layers.Bidirectional(tf.keras.layers.LSTM(32)),
    tf.keras.layers.Dense(64,activation='relu'),
    tf.keras.layers.Dropout(0.3),
    tf.keras.layers.Dense(1)
])
model.compile(
    optimizer=tf.keras.optimizers.Adam(1e-4),
    loss=tf.keras.losses.BinaryCrossentropy(from_logits=True),
    metrics=['accuracy']
)

#fit model
history = model.fit(
    train_ds,
    validation_data=test_ds,
    validation_steps=30,
    epochs=10
)
#plot metrics
plt.plot(history.history['accuracy'])
plt.xlabel('Epochs')
plt.ylabel('Error')
plt.show()

# function to predict messages based on model
# (should return list containing prediction and label, ex. [0.008318834938108921, 'ham'])
def predict_message(pred_text):
  pred = model.predict([pred_text])
  print(pred)
  prediction = [pred,'ham' if pred<0.5 else 'spam']
  return (prediction)

pred_text = "how are you doing today?"

prediction = predict_message(pred_text)
print(prediction)
