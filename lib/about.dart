import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "About",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Arial",
            fontSize: 35.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Text(
              "This Diabetes Predictor will help you find if you have diabetes or not",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Arial",
                fontSize: 26.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Text(
              " Pretrained Deep learning(DL) model is being used to predict",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Arial",
                fontSize: 26.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Text(
              "Accuracy : 97%",
              style: TextStyle(
                color: Color.fromARGB(255, 11, 243, 7),
                fontWeight: FontWeight.bold,
                fontFamily: "Arial",
                fontSize: 26.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
