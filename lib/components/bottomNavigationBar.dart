import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projedonem/screens/blog_screen.dart';
import 'package:projedonem/screens/home_screen.dart';
import 'package:projedonem/screens/input_screen.dart';




class bottomNavigationBar extends StatefulWidget{
  const bottomNavigationBar(BuildContext context);
 

   

  @override
 _BottomNavigationBarState createState() => _BottomNavigationBarState();

}

class _BottomNavigationBarState extends State<bottomNavigationBar>{
 Widget build(context){
  int _selectedIndex = 0;
     void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });}

      //if(_selectedIndex == 0){
        //Navigator.push(context, MaterialPageRoute(builder: ((context) => InputScreen())) );
      //}
      if(_selectedIndex == 1){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => HomeScreen())) );
      }
      if(_selectedIndex == 2){
        Navigator.push(context, MaterialPageRoute(builder: (context) => BlogScreen(),));
      }
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.report),label: "Report"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.announcement),label: "Blog")
      ],);}
}