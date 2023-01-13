import 'package:flutter/material.dart';


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
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 29),
                    child: Column(
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
                          widget.probability,
                
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15),
                        ),
                      ],
                    ),
                  )
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
                              children: [
                               const  Icon(
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
                          const Padding(
                            padding: const EdgeInsets.only(left: 23, top: 17),
                            child: Text(
                              "Blood Group",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          ),
                         const  SizedBox(
                            height: 4,
                          ),
                        const   Padding(
                            padding: const EdgeInsets.only(left: 23),
                            child: Text(
                              "A+",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 28),
                            ),
                          ),
                        ]),
                  ),
                 const  SizedBox(
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
                            Container(
                              child: const Icon(
                                Icons.water_drop_outlined,
                                color: Color(0xffE09F1F),
                              ),
                            ),
                            Container(
                              child: const Icon(
                                Icons.water_drop_outlined,
                                color: Color(0xffE09F1F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Text("Weight"),
                      ),
                     const  Padding(
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



