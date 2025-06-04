import xlrd
from shutil import copy
import shutil
import tensorflow as tf
import tensorflow_text
import numpy
#from translate import translate_bengali_scripts

file_location = "/home/surchand/projects/TranslateManipuri/processing/test.xls"

def inference(file_location, translator_model_name):
    reloaded = tf.saved_model.load(translator_model_name)
    readb = xlrd.open_workbook(file_location)
    writeb = shutil.copy(readb)
    readsheet = readb.sheet_by_index(0)
    writesheet = writeb.get_sheet(0)
    nrows = readsheet.nrows
    # skip the first rows as it is header
    for i in range(1, nrows):
        data = readsheet.cell(i, 0).value
        data = data.replace("'", "''")
        predicted = reloaded(data).numpy().decode('utf-8')
        print("English{}=>Manipuri{}".format(data, predicted))
        writesheet.write(i, 1, predicted)
        #bengali_text = translate_bengali_scripts(predicted)
        #writesheet.write(i, 2, bengali_text)
    writeb.save(file_location)

translator_model_name = "translate_manipuri_model"

inference(file_location, translator_model_name)
