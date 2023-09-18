import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_page/signin.dart';
class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("1C1C1C"),
      appBar: AppBar(
        title: Text("QuizApp🤳"),
        backgroundColor: HexColor("3FC2BF"),
      ),
      body: (
          Center(child: Column(mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Padding(padding:EdgeInsets.all(40),
                child: Text("Welcome",style:
                TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
              Row(mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Stack(children: [ Container(
                    height: 200,
                    width: 300,
                  ),
                    Positioned(top:60,
                      right: 15,
                      left: 15,
                      child:
                      ClipRRect(borderRadius: BorderRadius.circular(25),
                        child:Container(
                          width: 300,
                          height: 100,
                          color: Colors.white,
                          child: Padding(padding:EdgeInsets.fromLTRB(70.0, 70.0, 0.0, 0.0),
                            child: Text("Sahil Panwar",
                              style:TextStyle(
                                fontWeight: FontWeight.normal,
                                color: HexColor("#3A3E3F"),
                                fontSize: 20,
                              )
                              ,),
                          ),
                        ), ),),
                    Positioned(bottom: 80.0,
                      right: 90.0,
                      child:
                      Container(
                        child:
                        CircleAvatar(
                          radius:60,
                          backgroundImage:AssetImage("assets/Frame 122.jpg"),
                        ),
                      ),
                    )
                  ]
                  ),
                ],
              ),
              Stack(children: [
                Container(
                    height: 250,
                    width: 250,
                    decoration:BoxDecoration(
                      image:  DecorationImage(
                        image:  AssetImage("assets/Quiz Game app (15) 2.jpg"),
                        fit: BoxFit.fill,
                      ),
                    )
                ),
                Positioned(bottom: 40,
                  right:80 ,
                  child:

                  GestureDetector(
                    child: ClipRRect(borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 40,
                        width:100 ,
                        padding: EdgeInsets.only(left:25,top: 8 ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff8435DE),
                                Color(0xffB854E8)
                              ],)
                        ),
                        child:
                        Text("Start",style:
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize:20,
                        )
                          ,),
                      ),
                    ),
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:  (context)=>login_page(),));},
                  ),)

              ],)
            ],
          ),
          )
      ),
    );
  }
}


