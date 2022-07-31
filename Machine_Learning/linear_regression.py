# ---------- Linear Regression for Health Care Costs ----------#
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

try:
  # %tensorflow_version only exists in Colab.
  %tensorflow_version 2.x
except Exception:
  pass
import tensorflow as tf

from tensorflow import keras
from tensorflow.keras import layers

import tensorflow_docs as tfdocs
import tensorflow_docs.plots
import tensorflow_docs.modeling

# Import data
!wget https://cdn.freecodecamp.org/project-data/health-costs/insurance.csv
dataset = pd.read_csv('insurance.csv')


#covert text data to numeric
df = dataset
df['sex'] = pd.factorize(df['sex'])[0]
df['region'] = pd.factorize(df['region'])[0]
df['smoker'] = pd.factorize(df['smoker'])[0]
dataset = df
dataset.head()

#separate the dataset
test_dataset = dataset.sample(frac=0.2)
train_dataset = dataset.drop(test_dataset.index)

train_labels = train_dataset.pop('expenses')
test_labels = test_dataset.pop('expenses')

#normalization
normalizer = tf.keras.layers.experimental.preprocessing.Normalization()
normalizer.adapt(np.array(train_dataset))

#model architecture
expenses_model = tf.keras.Sequential([
    normalizer,
    layers.Dense(16),
    layers.Dense(4),
    layers.Dropout(0.2),
    layers.Dense(1)
])
expenses_model.compile(
    optimizer=tf.optimizers.Adam(learning_rate=0.1),
    loss='mae',
    metrics=['mae','mse']
)
expenses_model.build()

#training
history = expenses_model.fit(train_dataset,
                             train_labels,
                             epochs=100,
                             verbose=0,
                             validation_split=0.7)

#plotting
plt.plot(history.history['mae'],label='Mean Absolute Error')
plt.xlabel('Epoch')
plt.ylabel('Error [MAE]')
plt.show()

#test data validation
loss, mae, mse = expenses_model.evaluate(test_dataset, test_labels)
print("Testing set Mean Abs Error: {:5.2f} expenses".format(mae))
# Plot predictions.
test_predictions = expenses_model.predict(test_dataset).flatten()

a = plt.axes(aspect='equal')
plt.scatter(test_labels, test_predictions)
plt.xlabel('True values (expenses)')
plt.ylabel('Predictions (expenses)')
lims = [0, 50000]
plt.xlim(lims)
plt.ylim(lims)
_ = plt.plot(lims,lims)
