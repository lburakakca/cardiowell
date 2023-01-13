import 'package:flutter/material.dart';
import 'package:projedonem/screens/input_screen.dart';
import 'package:projedonem/screens/report_screen.dart';
import '../components/bottomNavigationBar.dart';
import 'home_screen.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      //bottomNavigationBar: bottomNavigationBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 28, top: 58),
                child: Text(
                  "Blog",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 27,
                  ),
                ),
              ),
              SizedBox(
                height: 29,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _blogList.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30, left: 26),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(
                          color: Color(0xffBECADA),
                        ),
                      ),
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      elevation: 7,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 28, left: 11),
                            child: Text(
                              _blogList[index]['title']!,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0E1012)),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 23, left: 11),
                            child: Text(
                              _blogList[index]['description']!,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7B8D9E)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
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

List<Map<String, String>> _blogList = [
  {
    "title": "Harvard Health Blog: Heart Health",
    "description":
        "Harvard Heart Health Blog is run by Harvard Health Publications, the publishing division of the prestigious Harvard Medical School of Harvard University in Cambridge, MA.Harvard Health Publications collate health and wellness information to educate through newsletters, books, video, reports, mobile apps, web-based interactive tools, and their websites.The Heart Health blog covers a broad range of heart-related topics, including how to stick to a low-salt diet when eating out, over-the-counter pain relievers and your heart, how dietary improvements could help you to live longer, and why you should keep tabs on your alcohol intake.  "
  },
  {
    "title": "Support Network Blog",
    "description":
        "The Support NetworkTrusted Source is the patient support website of the American Heart AssociationTrusted Source. The American Heart Association are dedicated to fighting heart disease and stroke. They fund innovative research, provide tools and information to help save and improve lives, and fight for stronger public health policies.The Support Network connects people with similar conditions on their forums and provides real stories from real people, offers support videos, and gives answers from health professionals.Recent blog postsTrusted Source on the Support Network include Catherine’s accountTrusted Source of her father’s stroke survival, Lori’s adjustmentTrusted Source to life after stroke, Emily’s interviewTrusted Source with a heart disease researcher, and Melanie’s cardiopulmonary resuscitation storyTrusted Source."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
  {
    "title": "Best foods for healt!",
    "description":
        "You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu.You should look this menu ook this menu.You should look this menuook this menu.You should look this."
  },
];
