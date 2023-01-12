import 'package:flutter/material.dart';
import 'package:projedonem/screens/report_screen.dart';
import '../Report.dart';
import 'home_screen.dart';



class InputScreen extends StatelessWidget {
  final  _ageController = TextEditingController();
  final  _sexController = TextEditingController();
  final  _cerebralPalsyController = TextEditingController();
  final  _bloodPressureController = TextEditingController();
  final  _cholesterolController = TextEditingController();
  final  _fastingBlueSugarController = TextEditingController();
  //final  _restEcgController = TextEditingController();
  final  _maxHeartRateController = TextEditingController();
  final  _exangController = TextEditingController();
  //final  _oldpeakController = TextEditingController();
  final  _slopeController = TextEditingController();
  final  _caController = TextEditingController();

  InputScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                    top: 30, right: 16, left: 16, bottom: 30),
                child: Text(
                  "Shahin Alam",
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
                            border: InputBorder.none,
                            hintText: ' Age'
                          ),
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
                            border: InputBorder.none,
                            hintText: ' Sex'
                          ),
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
                            hintText: ' Cerebral Palsy'
                          ),
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
                            hintText: ' Blood Pressure'
                          ),
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
                            border: InputBorder.none,
                            hintText: ' Cholesterol'
                          ),
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
                            hintText: 'Max Hearth Rate'
                          ),
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
                            hintText: ' Fasting Blue Sugar'
                          ),
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
                            border: InputBorder.none,
                            hintText: ' Exang'
                          ),
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
                            border: InputBorder.none,
                            hintText: ' Slope'
                          ),
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
                          controller:_caController ,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: ' Ca'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 56,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 23,
                      left: 33,
                    ),
                    child: InkWell(
                      onTap: () async {
   Report report = Report(age: _ageController.text,
   sex:_sexController.text ,
   cp:_cerebralPalsyController.text ,
   trestbps: _bloodPressureController.text,chol: _cholesterolController.text,fbs: _fastingBlueSugarController.text,restecg: "1.5",thalach: _maxHeartRateController.text,exang: _exangController.text ,oldpeak: "2",slope:_slopeController.text ,ca:_caController.text, thal: "0", target: "0");

   Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => ReportScreen(report: report)),
                  );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            shape: BoxShape.rectangle,
                            color: Color(0xffD6F6FF)),
                        child: const Text(
                            "Show Result",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Color(0xff009DC7),
                            ),
                          ),
                            
                      ),
                    ),
                  ),
                ),
              ), // buton
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

