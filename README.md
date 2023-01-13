<h1 align="center">
  <br>
  <a href=""><img src="https://github.com/lburakakca/cardiowell/blob/master/assets/logos/logo1.png" alt="EnergyWeb" width="150"></a>
  <br>
CardioWell 
  <br>
  <br>
</h1>

**CardioWell** is a mobile application in the field of health that detect your risk of heart disease as a percantage after take some data it will receive from you and informs you.   


:construction: Documentation available at [https://energy-web-foundation-origin.readthedocs-hosted.com/en/latest/](https://energy-web-foundation-origin.readthedocs-hosted.com/en/latest/) :construction:

## Table of Contents

-   [Table of Contents](#table-of-contents)
-   [Explanation of Inputs](#packages)
-   [How to Use?](#preparation)



## Packages

### Explanation

| Package                                                                                                       | Stable                                                                                                                                                                      | Canary                                                                                                                                                                         | Description                                                                             |
| ------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------- |
| [`@energyweb/origin-device-registry-api`](/packages/devices/origin-device-registry-api)                       | [![npm](https://img.shields.io/npm/v/@energyweb/origin-device-registry-api.svg)](https://www.npmjs.com/package/@energyweb/origin-device-registry-api)                       | [![npm](https://img.shields.io/npm/v/@energyweb/origin-device-registry-api/canary)](https://www.npmjs.com/package/@energyweb/origin-device-registry-api)                       | Generic implementation of API working with Origin device registry                       ||
|           `age`          | The person's age in years |
|           `sex`          | The person's sex (1 = male, 0 = female) |
|           `cp`          | The chest pain experienced (Value 1: typical angina, Value 2: atypical angina, Value 3: non-anginal pain, Value 4: asymptomatic) |
|           `trestbps`          | The person's resting blood pressure (mm Hg on admission to the hospital) |
|           `chol`          | The person's cholesterol measurement in mg/dl |
|           `fbs`          |  The person's fasting blood sugar (> 120 mg/dl, 1 = true; 0 = false) |
|           `restecg`          | Resting electrocardiographic measurement (0 = normal, 1 = having ST-T wave abnormality, 2 = showing probable or definite left ventricular hypertrophy by Estes' criteria) |
|           `thalach`          | The person's maximum heart rate achieved. |
|           `exang`          | Exercise induced angina (1 = yes; 0 = no) |
|           `oldpeak`          | ST depression induced by exercise relative to rest ('ST' relates to positions on the ECG plot.)  |
|           `slope`          | the slope of the peak exercise ST segment (Value 1: upsloping, Value 2: flat, Value 3: downsloping) |
|           `ca`          | The number of major vessels (0-3) |





### How to Use 

After registering to the application from the Registration Screen, you must go to the Login screen. After logging into the application, you will be redirected to the Home Page. To measure your heart disease risk, you will reach the data entry screen after pressing the `Detect your Risk!`  button. After entering the desired data on this screen, you will be directed to the result screen and learn your risk of heart disease.