import 'package:flutter/material.dart';
import 'package:final_diabetes/about.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

// ignore: avoid_init_to_null
var result = null;
var gender;
var age;
var hypertension;
var heart_disease;
var smoking_history;
var bmi;
var HbA1c_level;
var blood_glucose_level;

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ag() async {
    var r = await http.get(
      Uri.http(
        "127.0.0.1:8000",
        "cgi-bin/diabetes.py",
        {
          "gender": gender,
          "hypertension": hypertension,
          "heart_disease": heart_disease,
          "smoking_history": smoking_history,
          "bmi": bmi,
          "HbA1c_level": HbA1c_level,
          "blood_glucose_level": blood_glucose_level,
          "age": age
        },
      ),
    );
    setState(() {
      result = r.body;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.white,
        child: Center(
          child: IconButton(
            mouseCursor: MouseCursor.defer,
            iconSize: 29.0,
            onPressed: ag,
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: IconButton(
            alignment: Alignment.topLeft,
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => SimpleDialog(
                backgroundColor: Colors.white,
                title: Text(
                  "Diabetes Predictor",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    fontFamily: "Arial",
                  ),
                ),
                //                        About
                children: [
                  Column(
                    children: [
                      Card(
                        color: Colors.blueAccent,
                        shadowColor: Colors.grey,
                        borderOnForeground: true,
                        child: ListTile(
                          trailing: IconButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => About(),
                              ),
                            ),
                            icon: Icon(Icons.apps_rounded),
                          ),
                          title: Text(
                            "About App",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                fontFamily: "Arial"),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            icon: Icon(
              Icons.contacts,
              color: Colors.black,
              size: 35.0,
            ),
          ),
        ),
        title: Center(
          child: Text(
            "Diabetes prediction",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Arial",
              fontSize: 35.0,
            ),
          ),
        ),
      ),

      //                     BODY
      body: Container(
        color: Colors.white30,
        child: StreamBuilder<Object>(
            stream: null,
            builder: (context, snapshot) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    //                               RESULT(output)
                    Text(
                      // ignore: unnecessary_brace_in_string_interps
                      "Result: ${result}",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Arial",
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: SafeArea(
                        child: ListView(
                          children: [
                            Card(
                              color: Color.fromARGB(96, 163, 209, 251),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (pg) => gender = pg,
                                style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                decoration: InputDecoration(hintText: "Gender"),
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 143, 206, 238),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (gl) => hypertension = gl,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration:
                                    InputDecoration(hintText: "Hypertension"),
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 99, 166, 190),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (bp) => heart_disease = bp,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration:
                                    InputDecoration(hintText: "Heart Disease"),
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 91, 157, 190),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (sk) => smoking_history = sk,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Smoking History"),
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 96, 153, 182),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (il) => bmi = il,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration: InputDecoration(hintText: "BMI"),
                              ),
                            ),
                            Card(
                              color: const Color.fromARGB(255, 105, 168, 199),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (ma) => HbA1c_level = ma,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration:
                                    InputDecoration(hintText: "HbA1c Level"),
                              ),
                            ),
                            Card(
                              color: Color.fromARGB(255, 99, 152, 179),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (db) => blood_glucose_level = db,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Blood glucose level"),
                              ),
                            ),
                            Card(
                              color: const Color.fromARGB(255, 111, 164, 190),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(
                                    decimal: true),
                                onChanged: (ag) => age = ag,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Arial",
                                  fontSize: 24.0,
                                ),
                                decoration: InputDecoration(hintText: "Age"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
