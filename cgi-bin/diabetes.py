#!/usr/bin/python3

import pandas as pd
print("content-type: text/html")
print()

import joblib
import cgi
from keras.models import load_model
model = load_model("dia_model.h5")
scaler= joblib.load('scaler.pkl')

f = cgi.FieldStorage()

gender = float(f.getvalue("gender"))
age = float(f.getvalue("age"))
hypertension = float(f.getvalue("hypertension"))
heart_disease = float(f.getvalue("heartdisease"))
smoking_history = float(f.getvalue("smoker"))
bmi = float(f.getvalue("bmi"))
HbA1c_level = float(f.getvalue("HbA1c_level"))
blood_glucose_level = float(f.getvalue("glucose_level"))

output = model.predict(scaler.transform([[gender,	age,	hypertension,	heart_disease,	smoking_history	,bmi,	HbA1c_level	,blood_glucose_level]]))

if output[0][0] < 1:
    print("yes")
else:
    print("No")

print(output)