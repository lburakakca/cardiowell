import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Report.dart';

const response = "";
String api_key =
    'JBJ0oJZjAAyYeQ1uA8Cgb8IukRF2MBB2lhlHOYZxkIvxly9A+Zu89f+5MZZxnTTwt79khJJaU+29+AMCNlwLrQ==';
Uri url = Uri.parse(
    'https://ussouthcentral.services.azureml.net/workspaces/c9014223c85d4766ac510d469977b6e0/services/8f426f385b3b436f97d22c4c94467108/execute?api-version=2.0&details=true');




Future<List<Report>> makePostRequest(
    Report report
  /*
    String age,
    String sex,
    String cp,
    String trestbps,
    String chol,
    String fbs,
    String restecg,
    String thalach,
    String exang,
    String oldpeak,
    String slope,
    String ca,
    String thal,
    String target*/) async {
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': ('Bearer ' + api_key),
    "Accept": "application/json",
  };
  final json = jsonEncode({
    "Inputs": {
      "input1": {
        "ColumnNames": [
          "age",
          "sex",
          "cp",
          "trestbps",
          "chol",
          "fbs",
          "restecg",
          "thalach",
          "exang",
          "oldpeak",
          "slope",
          "ca",
          "thal",
          "target"
        ],
        "Values": [
          [
            report.age,
            report.sex,
            report.cp,
            report.trestbps,
            report.chol,
            report.fbs,
            report.restecg,
            report.thalach,
            report.exang,
            report.oldpeak,
            report.slope,
            report.ca,
            report.thal,
            report.target
            /*age,
            sex,
            cp,
            trestbps,
            chol,
            fbs,
            restecg,
            thalach,
            exang,
            oldpeak,
            slope,
            ca,
            thal,
            target*/
          ],
          ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
        ]
      }
    },
    "GlobalParameters": {}
  });
  final response = await http.post(url, headers: headers, body: json);

 
     
      List<dynamic> body = jsonDecode(response.body);

      List<Report> reports = body
        .map(
          (dynamic item) => Report.fromJson(item),
        )
        .toList();

      return reports;
   
  print('Status code: ${response.statusCode}');
  print('Body: ${response.body}');
  }

class ReportScreen extends StatelessWidget {
 /* String age;
  String sex;
  String cp;
  String trestbps;
  String chol;
  String fbs;
  String restecg;
  String thalach;
  String exang;
  String oldpeak;
  String slope;
  String ca;
  //ReportScreen(this.response);*/
  Report report ; 
  ReportScreen({super.key, required this.report});
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text ---> Report
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 58),
              child: Text(
                "Report",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              ),
            ),

            // Health Disease Risk container
            // container--->row----column
            SizedBox(
              height: 46,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Container(
                height: 175,
                width: 319,
                decoration: BoxDecoration(
                  color: Color(0xffDCEDF9),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 29),
                    child: Column(
                      children: [
                        Text(
                          "Heart Disease Risk",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                           makePostRequest(report).toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 50),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 22,
            ),

            // row----cont
            Padding(
              padding: const EdgeInsets.only(
                left: 27,
              ),
              child: Row(
                children: [
                  Container(
                    height: 135,
                    width: 153,
                    decoration: BoxDecoration(
                      color: Color(0xffF5E1E9),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24, top: 24, right: 19),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.water_drop_outlined,
                                  color: Color(0xff9D4C6C),
                                ),
                                Icon(
                                  Icons.water_drop_outlined,
                                  color: Color(0xff9D4C6C),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 23, top: 17),
                            child: Text(
                              "Blood Group",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Text(
                              "A+",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 28),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 135,
                    width: 153,
                    decoration: BoxDecoration(
                      color: Color(0xffFAF0DB),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 24, top: 24, right: 19),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.water_drop_outlined,
                              color: Color(0xffE09F1F),
                            ),
                            Icon(
                              Icons.water_drop_outlined,
                              color: Color(0xffE09F1F),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Text("Weight"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Text(
                          "80 Kg",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


