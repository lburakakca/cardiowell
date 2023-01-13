import 'package:flutter/material.dart';
import 'dart:math';
import '../components/bottomNavigationBar.dart';
import '../screens/home_screen.dart';
import '../screens/blog_screen.dart';
import '../screens/input_screen.dart';
class ReportScreen extends StatefulWidget {
  String probability;
  //ReportScreen(this.response);
  ReportScreen(this.probability);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: bottomNavigationBar(context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text ---> Report
            const Padding(
              padding: EdgeInsets.only(left: 28, top: 58),
              child: Text(
                "Report",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
              ),
            ),

            // Health Disease Risk container
            // container--->row----column
            const SizedBox(
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 27),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Heart Disease Risk",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "${(double.parse(widget.probability)) * 100}%,",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 60),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 45.0, top: 35, bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/report.png',
                              width: 90,
                              height: 110,
                              color: Color.fromARGB(255, 2, 145, 247),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 22,
            ),

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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.bloodtype,
                                color: Color(0xff9D4C6C),
                                size: 32,
                              ),
                              Text(
                                "...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 23, top: 17),
                          child: Text(
                            "Blood Group",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 23),
                          child: Text(
                            "A+",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 28),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 135,
                    width: 153,
                    decoration: BoxDecoration(
                      color: Color(0xffFAF0DB),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.accessibility,
                                size: 32,
                                color: Color(0xffE09F1F),
                              ),
                              Text(
                                "...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23, top: 17),
                          child: Text(
                            "Weight",
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
                            "80 Kg",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
                          Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                 Container(alignment: Alignment.center,
                 child: Column(children: [
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => InputScreen(),));
                  }, icon: Icon(Icons.report)),Text("Report"),
                 ]),),
                 SizedBox(width: 50,),
                 Container(alignment: Alignment.center,
                 child: Column(children: [
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  }, icon: Icon(Icons.home)),Text("Home"),
                 ]),), 
                 SizedBox(width: 50,),
                 Container(alignment: Alignment.center,
                 child: Column(children: [
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BlogScreen(),));
                  }, icon: Icon(Icons.report)),Text("Blog"),
                 ]),),  

              ]),),
            
          ],
        ),
      ),
    );
  }
}
