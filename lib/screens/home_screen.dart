
import 'package:flutter/material.dart';

import 'blog_screen.dart';
import 'input_screen.dart';
import '../components/bottomNavigationBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // bottomNavigationBar: bottomNavigationBar(context),
      body: SafeArea(
        //We used SafeArea to avoid sticking to the top of the screen.
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTexts1(),
              buildTexts2(),
              buildTexts3(),
              buildB1(context),
              buildBanner(),
              buildText4(),
              buildTest(context),
              buildText5(context),
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

              ]),)
         
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTexts1() {
  return const Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Text(
      "👋 Hello!",
      style: TextStyle(
        fontSize: 16,
        color: Color(0xFF253141),
      ),
    ),
  );
}

Widget buildTexts2() {
  return const Padding(
    padding: EdgeInsets.only(top: 1.0),
    child: Text(
      "Shahin Alam",
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 23,
        color: Color(0xFF253141),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildTexts3() {
  return const Padding(
    padding: EdgeInsets.only(top: 8.0),
    child: Text(
      "Blog",
      style: TextStyle(
        fontSize: 17,
        color: Color(0xFF253141),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildB1(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 12.35),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BlogScreen()));
      },
      child: Container(
        padding: EdgeInsets.only(left: 31, right: 25, top: 11, bottom: 30),
        decoration: BoxDecoration(
            color: Color(0xFFDCEDF9), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/doctoricon.png',
                  width: 30,
                  height: 30,
                  color: Color(0XFF1C6BA4),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.medication,
                  color: Color(0XFF1C6BA4),
                  size: 30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.document_scanner_sharp,
                  color: Color(0XFF1C6BA4),
                  size: 30,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/virus.png',
                    color: Color(0xFF1C6BA4), width: 30, height: 30),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 20),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 7, top: 15, bottom: 1),
      decoration: BoxDecoration(
          color: Color(0xFFDCEDF9), borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Give an attention to \nyour healt",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 25),
              Text(
                "Lorem Ipsum is simply dummy\n text of the printing",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Image.asset(
            'assets/doctor.png',
            width: 90,
            height: 120,
          )
        ],
      ),
    ),
  );
}

Widget buildText4() {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: Text(
      "Test you applied",
      style: TextStyle(
          fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

@override
Widget buildTest(BuildContext context) {
  Size ScreenSize = MediaQuery.of(context).size;
  return Container(
    height: 120,
    child: Padding(
      padding: EdgeInsets.all(6),
      child: Expanded(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 200),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 204, 138),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "13",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Tue",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "09.30",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "Have Risk",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "%73 Lorem Ipsum",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "...",
                          style: TextStyle(
                              color: Color(0XFFD6F6FF),
                              fontSize: 13,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 133, 246),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "13",
                          style: TextStyle(
                              color: Color.fromARGB(255, 253, 252, 251),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Tue",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "09.30",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254),
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "Have Risk",
                          style: TextStyle(
                              color: Color.fromARGB(255, 251, 251, 251),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "%73 Lorem Ipsum",
                          style: TextStyle(
                              color: Color.fromARGB(255, 247, 245, 245),
                              fontSize: 13,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "...",
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 247, 247),
                              fontSize: 13,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 133, 246),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "13",
                          style: TextStyle(
                              color: Color.fromARGB(255, 253, 252, 251),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Tue",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "09.30",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 254),
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "Have Risk",
                          style: TextStyle(
                              color: Color.fromARGB(255, 251, 251, 251),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "%73 Lorem Ipsum",
                          style: TextStyle(
                              color: Color.fromARGB(255, 247, 245, 245),
                              fontSize: 13,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "...",
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 247, 247),
                              fontSize: 13,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 95, 255, 151),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "13",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 253),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "Tue",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 254, 253),
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "09.30",
                          style: TextStyle(
                              color: Color.fromARGB(255, 254, 253, 253),
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "Have Risk",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 1),
                        Text(
                          "%73 Lorem Ipsum",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 13,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "...",
                          style: TextStyle(
                              color: Color.fromARGB(255, 251, 251, 251),
                              fontSize: 13,
                              fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

@override
Widget buildText5(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 23.12),
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InputScreen()));
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 85, right: 85, top: 5, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: const [
                Text(
                  "Detect your Risk!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    
  );
}
