import 'package:demo2project/screens/blog_screen.dart';
import 'package:demo2project/screens/input_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Report",),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important_sharp),
              label: "Notification"),
        ],
      ),
      body: SafeArea(
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
              buildTest(),
              buildText5(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTexts1() {
  return const Padding(
    padding: EdgeInsets.only(top: 25.0),
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
        fontSize: 27,
        color: Color(0xFF253141),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget buildTexts3() {
  return const Padding(
    padding: EdgeInsets.only(top: 13.0),
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BlogScreen()));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
            child: Icon(
              Icons.person,
              color: Colors.deepOrange,
              size: 18,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
          child: const Icon(
            Icons.person,
            color: Colors.orange,
            size: 18,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.limeAccent),
          child: const Icon(
            Icons.person,
            color: Colors.black,
            size: 18,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Colors.blueAccent),
          child: const Icon(
            Icons.person,
            color: Colors.tealAccent,
            size: 18,
          ),
        ),
      ],
    ),
  );
}

Widget buildBanner() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 30),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 24, right: 7, top: 25, bottom: 1),
      decoration: BoxDecoration(
          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(15)),
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Lorem Ipsum is simply dummy\n text of the printing",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 11,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Image.network(
            "https://s3-alpha-sig.figma.com/img/947a/69b3/a1e5489eb7ff56f02bac71eec663a28f?Expires=1672617600&Signature=mhnwYULUgum~J6T~yoXic4vCOQf6g1lh~cZDmi6TdATmx7cNW-KBiAq2l7ZEY-fVA5x098XelJrAVLn5vmxxRfxdrLaf9W1FqopkW-Rk~DjjvzataiDcNIGxIxwAIcA~hlkbF4TjgUJiMLIxAcaj820QEht0qdq5F-2V3ymaMUwSeq~PxTnJ8DFz8wclAnqJgv51WYS2FauPUgKOfDlC7SYGd8s-ol9eez6fm12gxe0fkxBBGhXaFkiPVEd20CQmlCXwnHrPa8sWdQX6eIBb3zm1AwVa9YEu2K4zWMtWPo6WP5eRlT5NPh7P-Y2urS9jAVw4ISsunA14tId7-MH9VA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
            width: 120,
            height: 180,
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
          fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

Widget buildTest() {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 11, top: 11, bottom: 11),
      decoration: BoxDecoration(
          color: Colors.cyanAccent, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "13",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "Tue",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "09.30",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 4),
              Text(
                "Have Risk",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              Text(
                "%73 Lorem Ipsum",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "...",
                style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 15,
                    fontWeight: FontWeight.w100),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildText5(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 23.12),
    child: InkWell(
      onTap: (){
        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InputScreen()));
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
