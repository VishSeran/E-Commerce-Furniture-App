import 'package:flutter/material.dart';
import 'package:furnitureapp/pages/signup.dart';
import 'package:furnitureapp/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          decoration: BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF43CEA2), Color(0xFF185A9D),


              ])),
        ),
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Text(""),
        ),
        Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(children: [
            Center(child: Image.asset("assets/images/logo7.png",width: MediaQuery.of(context).size.width/2, fit: BoxFit.fill,)),

            Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(25),
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25),),
                child: Column(children: [
                  SizedBox(height: 30,),
                  Text("Login", style: AppWidget.boldTextFieldStyle(),),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.normalFieldStyle(),prefixIcon: Icon(Icons.email_outlined)),

                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.normalFieldStyle(),prefixIcon: Icon(Icons.key_outlined)),


                  ),
                  SizedBox(height: 20,),
                  Container(
                      alignment: Alignment.center,
                      child: Text("Forgot password?",style: AppWidget.normalFieldStyle(),)),
                  SizedBox(height: 50,),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(23),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      width: 200,
                      decoration: BoxDecoration(color: Color(0xFF185A9D),borderRadius: BorderRadius.circular(23)),
                      child: Center(child: Text("LOGIN", style: AppWidget.loginbuttonStyle())),
                    ),
                  ),
                  SizedBox(height: 25,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> SignUp()));
                      },
                      child: Text("Don't have an account? Sign up",style: AppWidget.lightTextFieldStyle(),))
                ],),
              ),
            )
          ],),
        )
      ],),),
    );
  }
}
