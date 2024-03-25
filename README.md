

# Diabetes Prediction System

This project is a Diabetes Prediction System that uses Flutter for the frontend and a Python CGI script for the backend. It allows users to input their health parameters and get a prediction about whether they are likely to have diabetes or not.

## Prerequisites

Before running this project, make sure you have the following installed:

- Flutter SDK
- Python (3.x recommended)
- CGIHTTPServer (Python package for running CGI scripts)

## Getting Started

1. Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/diabetes-prediction.git
```

2. Navigate to the project directory

3. Install Flutter dependencies:

```bash
flutter pub get
```

4. Start the Flutter frontend:

```bash
flutter run
```

This will launch the Flutter app on your connected device or emulator.

5. Set up the Python CGI backend:

- Place the backend file in your web server's CGI directory. For example, in Apache, this directory is typically `cgi-bin`.

6. Start the Python CGI server:

```bash
python -m CGIHTTPServer
```

This will start a CGI-compatible HTTP server that can run your Python CGI script.

7. Update the frontend code:

In your Flutter project, update the API endpoint to your Python CGI script's URL.


Replace `/cgi-bin/diabetes.py` with the actual URL where your Python CGI script is hosted.

8. Test the application

Open the Flutter app on your device or emulator. Enter the required health parameters and submit the form to get the diabetes prediction from the backend.


Images:

![image](https://github.com/Sayandeep1236/Diabetes-Prediction-Application/assets/143305455/0331a62f-3a86-4dfe-90b0-e55f4b26bb7b)


![image](https://github.com/Sayandeep1236/Diabetes-Prediction-Application/assets/143305455/2f9de302-e7cd-4f6a-890c-329c49da96a8)


