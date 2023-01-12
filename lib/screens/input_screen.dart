
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projedonem/screens/report_screen.dart';

import 'home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:projedonem/ReportResult.dart';

import '../Report.dart';
String api_key =
    'JBJ0oJZjAAyYeQ1uA8Cgb8IukRF2MBB2lhlHOYZxkIvxly9A+Zu89f+5MZZxnTTwt79khJJaU+29+AMCNlwLrQ==';
Uri url = Uri.parse(
    'https://ussouthcentral.services.azureml.net/workspaces/c9014223c85d4766ac510d469977b6e0/services/8f426f385b3b436f97d22c4c94467108/execute?api-version=2.0&details=true');
http.Response response = response;
class InputScreen extends StatelessWidget {
  final _ageController = TextEditingController();
  final _sexController = TextEditingController();
  final _cerebralPalsyController = TextEditingController();
  final _bloodPressureController = TextEditingController();
  final _cholesterolController = TextEditingController();
  final _fastingBlueSugarController = TextEditingController();
  //final  _restEcgController = TextEditingController();
  final _maxHeartRateController = TextEditingController();
  final _exangController = TextEditingController();
  //final  _oldpeakController = TextEditingController();
  final _slopeController = TextEditingController();
  final _caController = TextEditingController();

  InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 30, right: 16, left: 16, bottom: 30),
              child: Text(
                "Steve Jobs",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _ageController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: ' Age'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _sexController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: ' Sex'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _cerebralPalsyController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Cerebral Palsy'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _bloodPressureController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Blood Pressure'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _cholesterolController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: ' Cholesterol'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _maxHeartRateController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Max Hearth Rate'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _fastingBlueSugarController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Fasting Blue Sugar'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _exangController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: ' Exang'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _slopeController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: ' Slope'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        controller: _caController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: ' Ca'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                alignment: Alignment.center,
                height: 56,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: ()  async {
                       
                  
                    
                        showModalBottomSheet<void>(
                          
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {},
                                child: Card(
                                  elevation: 5,
                                  child: ListView(
                                    children: [
                                      // text ---> Report
                                      const Text(
                                          "Report",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      

                                      // Health Disease Risk container
                                      // container--->row----column
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Container(
                                          height: 150,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: Color(0xffDCEDF9),
                                            borderRadius:
                                                BorderRadius.circular(24),
                                          ),
                                          child: Row(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, top: 20),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Heart Disease Risk",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    "Burağa götten gireyim",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ]),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),

                                      // row----cont
                                  
                                    ],
                                  ),
                                ),
                              );
                            });
                             final ReportResult result = await makePostRequest(_ageController.text, _sexController.text, _cerebralPalsyController.text, _bloodPressureController.text, _cholesterolController.text, _fastingBlueSugarController.text, "", _maxHeartRateController.text, _exangController.text, "", _slopeController.text, _caController.text, "0", "0") ;
                             print(result.ScoredProbabilitiesFor1);
                      },
                      child: Text("Show Result"),
                    ),
                  ],
                )), // buton
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.book_sharp,
                    size: 40,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Report",
                  style: TextStyle(color: Color(0xff7B8D9E)),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Color(0xff7B8D9E)),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_sharp,
                    size: 40,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                Text(
                  "Notifications",
                  style: TextStyle(color: Color(0xff7B8D9E)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


Future<ReportResult> makePostRequest(String age, String sex, String cp, String trestbps, String chol, String fbs, String restecg, String thalach, String exang, String oldpeak, String slope,  String ca, String thal,String target) async {
  final headers = {
            'Content-Type':'application/json', 
            'Authorization':('Bearer '+ api_key),
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
          age,
          sex,
          cp,
          trestbps,
          chol,
          chol,
          fbs,
          restecg,
          thalach,
          exang,
          oldpeak,
          slope,
          ca,
          thal
        ],
        [
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0",
          "0"
        ]
      ]
    }
  },
  "GlobalParameters": {}
});
  final response = await http.post(url, headers: headers, body: json);
  print("Tam yaşında"+age);
  print('Status code: ${response.statusCode}');
  print('Body: ${response.body}');
  final jsonResponse = jsonDecode(response.body).cast<Map<String, dynamic>>();
  List cmList = (jsonDecode(response.body) as List).map((data) => new ReportResult.fromJson(data)).toList();
  return cmList.first;



 
}