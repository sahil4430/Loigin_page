import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_page/auth/auth.dart';
import 'package:login_page/homepage.dart';
import 'package:login_page/signin.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({Key? key}) : super(key: key);

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  final authfirebase = authFirebase();
  @override
  Widget build(BuildContext context) {
    final formkey =GlobalKey<FormState>();
    String email="";
    String password="";
    String username="";
    final _usernamecontroller =TextEditingController();
    final _mailcontroller =TextEditingController();
    final _passwordcontroller =TextEditingController();
    return Scaffold(
      body: Row(
        children: [
          Stack(
              children:[ Container(
                  height: 1000,
                  width: 360,
                  decoration:BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Color( 0xffFF735F),
                            Color(0xffDD999B),
                            Color(0xff957C9A),]
                      )
                  )
              ),
                Positioned(top: 80,left: 70,
                  child: Container(
                    height: 200,width: 200,
                    decoration: BoxDecoration(
                        image:DecorationImage(image:AssetImage("assets/1000_F_134600348_HR95yQ3Vbps9QprUfsImKsbsA3iLehtl 1.png"))
                    ),
                  ),
                ),
                Positioned(top: 240,left: 70,
                    child: Text("Bliss Hub",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 43,
                      ) ,)),
                Positioned(bottom:-110 ,
                    child: Container(height:500,
                      width: 360,
                      decoration: BoxDecoration(
                          image: DecorationImage(image:AssetImage("assets/#aesthetic #aestheticphotos #aestheticphotography #nature #naturephotography 1.png"))
                      ),
                    )),
                Positioned(bottom: 460,
                    left: 55,
                    child: ClipRRect(borderRadius: BorderRadius.circular(17),
                      child: Container( padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: 50,
                        width: 250,
                        color: Colors.white38,
                        child: TextField(
                          controller: _usernamecontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:"Username",
                          ),
                        ),
                      ),
                    )),
                Positioned(bottom: 400,
                    left: 55,
                    child: ClipRRect(borderRadius: BorderRadius.circular(17),
                      child: Container( padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: 50,
                        width: 250,
                        color: Colors.white38,
                        child: TextField(
                          controller: _mailcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:"Email",
                          ),
                        ),
                      ),
                    )),
                Positioned(bottom: 340,
                    left: 55,
                    child: ClipRRect(borderRadius: BorderRadius.circular(17),
                      child: Container( padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        height: 50,
                        width: 250,
                        color: Colors.white38,
                        child: TextField(
                          controller: _passwordcontroller,
                          decoration: InputDecoration(
                            hintText:"Password",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    )),Positioned(bottom: 170,
                    left: 100,
                    child: GestureDetector( onTap: ()async{
                      var email= _mailcontroller.text;
                      var user = _usernamecontroller.text;
                      var password = _passwordcontroller.text;
                      await authfirebase.signinwithmail(email, password);
                      Navigator.push(context, MaterialPageRoute(builder: (Context)=>Quiz()));
                    },
                      child: ClipRRect(borderRadius: BorderRadius.circular(17),
                        child: Container( padding: EdgeInsets.fromLTRB(50, 11, 0, 0),
                            height: 43,
                            width: 160,
                            color: HexColor("FF735F").withOpacity(0.7),
                            child: Text("Sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17
                              ),
                            )
                        ),
                      ),
                    )),
                Positioned(bottom: 120,
                    left: 120,
                    child: GestureDetector(
                      onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          login_page()
                      ));},
                      child: ClipRRect(borderRadius: BorderRadius.circular(17),
                        child: Container( padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                            decoration: BoxDecoration(border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                                borderRadius: BorderRadius.all(Radius.circular(17))
                            ),
                            height: 40,
                            width: 120,
                            child: Text("sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                        ),
                      ),
                    )),
              ]
          ),
        ],
      ),
    );
  }
}