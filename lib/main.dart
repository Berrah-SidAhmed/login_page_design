import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const test(),
    );
  }
}

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'assets/images/1.png',
                  fit: BoxFit.fill,
                  width: 400,
                ),
                top: 0,
                left: 0,
                right: 0,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 140),
                      child: Text(
                        'Hello',
                        style:
                            TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Sign in to your account',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            letterSpacing: -1.2),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 20,
                                  offset: Offset(0, 15))
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              prefixIconColor: Colors.grey,
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 20,
                                  offset: Offset(0, 15))
                            ],
                            borderRadius: BorderRadius.circular(50)),
                        child: TextField(
                          obscureText: true,
                          expands: false,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Colors.grey,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 150),
                      child: GestureDetector(
                        onTap: (){},
                        child: Text("Forget your password ! ",style: TextStyle(
                          color: Colors.grey,
                        ),),
                      )
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 200, top: 90),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          
                          margin: EdgeInsets.only(top: 90, left: 10),
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Colors.orange,Colors.purple]),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_right),style: ButtonStyle(iconColor: MaterialStateProperty.all(Colors.white)),),
                          
                      
                        
                        )
                      ],
                    ),
                    SizedBox(height: 60,),
                    Row(children: [
                      

                      Container(
                        margin: EdgeInsets.only(left: 50),
                        child: Text('Dont have an account !'),),
                      Container(
                        
                        child: GestureDetector(
                          onTap: (){       },
                          child: Text('Create',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                        ),
                      )
                    ],)
                  ],
                ),
              ),
              Positioned(
                child: Image.asset('assets/images/3.png',
                  width: 100,
                ),
                bottom: 0,
                left: -5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
