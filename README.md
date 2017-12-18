# Reproduction of an issue of AveragePooling2D on WebDNN

on Keras, AveragePooling2D((2, 2), padding="same") outputs an tensor with 1 element when input's dimension is same as pool_size.
on WebDNN, it outputs an tensor with 4 elements. The first elements may match Keras' one.

on Keras, AveragePooling2D((3, 3), padding="same") outputs an tensor with 1 element when input's dimension is same as pool_size.
on WebDNN, it outputs an tensor with 4 elements. No elements match Keras' one.

Larger padding_size seems same as the case of (3, 3).
