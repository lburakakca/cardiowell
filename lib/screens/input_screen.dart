import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:projedonem/screens/report_screen.dart';
import '../components/bottomNavigationBar.dart';
import '../Results.dart';

String api_key =
    'JBJ0oJZjAAyYeQ1uA8Cgb8IukRF2MBB2lhlHOYZxkIvxly9A+Zu89f+5MZZxnTTwt79khJJaU+29+AMCNlwLrQ==';
Uri url = Uri.parse(
    'https://ussouthcentral.services.azureml.net/workspaces/c9014223c85d4766ac510d469977b6e0/services/8f426f385b3b436f97d22c4c94467108/execute?api-version=2.0&details=true/&&format=swagger');

var ageController = TextEditingController();
var sexController = TextEditingController();
var cpController = TextEditingController();
var trestbpsController = TextEditingController();
var cholController = TextEditingController();
var fbsController = TextEditingController();
var restecgController = TextEditingController();
var thalachController = TextEditingController();
var exangController = TextEditingController();
var oldpeakController = TextEditingController();
var slopeController = TextEditingController();
var caController = TextEditingController();

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: const Text(
                "Steve Jobs",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: ageController,
                decoration: const InputDecoration(
                  hintText: "Age",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: sexController,
                decoration: const InputDecoration(
                  hintText: "Sex",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: cpController,
                decoration: const InputDecoration(
                  hintText: "Cerebral Palsy",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: trestbpsController,
                decoration: const InputDecoration(
                  hintText: "Blood Pressure",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: cholController,
                decoration: const InputDecoration(
                  hintText: "Cholesterol",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: fbsController,
                decoration: const InputDecoration(
                  hintText: "Fasting Blue Sugar",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: restecgController,
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: thalachController,
                decoration: const InputDecoration(
                  hintText: "Max Heart Rate",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: exangController,
                decoration: const InputDecoration(
                  hintText: "Exang",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: oldpeakController,
                decoration: const InputDecoration(
                  hintText: "Old Peak",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: slopeController,
                decoration: const InputDecoration(
                  hintText: "Slope",
                ),
              ),
            ),
            ListTile(
              title: TextField(
                controller: caController,
                decoration: const InputDecoration(
                  hintText: "Ca",
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () async {
                  final Output1 result = await makePostRequest(
                      ageController.text,
                      sexController.text,
                      cpController.text,
                      trestbpsController.text,
                      cholController.text,
                      fbsController.text,
                      restecgController.text,
                      thalachController.text,
                      exangController.text,
                      oldpeakController.text,
                      slopeController.text,
                      caController.text,
                      "0",
                      "0");
                  String probability = result.scoredProbabilitiesForClass1;
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReportScreen(probability)));
                },
                child: Text("Show Result"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<Output1> makePostRequest(
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
    String target) async {
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': ('Bearer $api_key'),
    "Accept": "application/json",
  };
  final json = jsonEncode({
    "Inputs": {
      "input1": [
        {
          "age": age,
          "sex": sex,
          "cp": cp,
          "trestbps": trestbps,
          "chol": chol,
          "fbs": fbs,
          "restecg": restecg,
          "thalach": thalach,
          "exang": exang,
          "oldpeak": oldpeak,
          "slope": slope,
          "ca": ca,
          "thal": thal,
          "target": target
        }
      ]
    },
    "GlobalParameters": {}
  });

  final response = await http.post(url, headers: headers, body: json);
  print(response.body);
  Map<String, dynamic> jsonData = jsonDecode(response.body);
  Results results = Results.fromJson(jsonData['Results']);
  print(results);
  return results.output1[0];
}
