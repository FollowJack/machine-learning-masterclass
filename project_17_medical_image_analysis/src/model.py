from keras import applications
from keras.preprocessing.image import ImageDataGenerator
from keras import optimizers
from keras.models import Sequential
from keras.layers import Dropout, Flatten, Dense, GlobalAveragePooling2D
from keras.models import Model
from keras.optimizers import Adam

import pickle

import numpy as np
from keras.preprocessing import image

class XRayModel:

    def __init__(self,model_location="models/model.pkl"):
        with open(model_location, 'rb') as f:
            self.model = pickle.load(f)
        self.img_width, self.img_height = 299, 299

    '''
        Returns 1 for chest and 0 for abd
    '''
    def classify(self, image_dir):
        image_to_classify = image.load_img(image_dir,
                                 target_size=(self.img_width, self.img_height))

        image_to_classify = image.img_to_array(image_to_classify)
        x = np.expand_dims(image_to_classify, axis=0) * 1./255
        return self.model.predict(x)


# example usage
if __name__ == '__main__':
    test_dir_chest='data/TRAIN/openI_abd_xray/openI_2.png' #change to location of chest x-ray

    classifier = XRayModel()
    print(classifier.classify(test_dir_chest))
