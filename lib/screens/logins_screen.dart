import 'package:demo2project/screens/register_screen.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 76, 201),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                // logo
                Image.asset(
                  'assets/logos/logo1.png',
                  height: 179,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
      
                // text(login to your account)
      
      
                // email
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text('E-Mail',style: TextStyle(color: Colors.white,),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25,),
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'E-Mail'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 60,
                ),
      
                //password
      
                Column(
                  children: [
                     Row(
                       children: [
                         Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Text('Password',style: TextStyle(color: Colors.white,),),
                    ),
                    SizedBox(width: 140,),
                    Text('Forgot Password',style: TextStyle(color: Colors.grey),),
      
                       ],
                     ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Password'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 80,
                ),
      
                //Sign ın buttton
                GestureDetector(
                  onTap: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10,),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(58),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
      
                SizedBox(
                  height: 10,
                ),
      
                //Not a member   button(register now)
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        '  Register Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
