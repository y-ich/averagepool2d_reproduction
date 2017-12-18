import numpy as np
from keras.models import Model
from keras.layers import Input, AveragePooling2D

size = 3

def create_model():
    x = Input(shape=(size, size, 1), name="x")
    y = AveragePooling2D((size, size), padding="same")(x)
    return Model(inputs=[x], outputs=[y])

if __name__ == '__main__':
    model = create_model()
    x = np.ones((1, size, size, 1))
    print(model.predict({ 'x': x }))
    model.save('model.h5')
