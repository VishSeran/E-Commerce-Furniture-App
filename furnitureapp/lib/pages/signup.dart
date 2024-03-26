

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furnitureapp/pages/bottomnav.dart';
import 'package:furnitureapp/pages/login.dart';
import 'package:furnitureapp/widget/widget_support.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String email = "", password = "", name = "";

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController mailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration () async {
    if(password!= null){
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

        ScaffoldMessenger.of(context).showSnackBar(
            (SnackBar(
                backgroundColor: Colors.blueAccent,
                content: Text("Registered Successfully",style:TextStyle(fontSize: 20.0),))));

      }on FirebaseException catch(e){
        if (e.code=='weak-password'){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Password provided is too weak",style: TextStyle(fontSize: 18),)));
        }
        else if(e.code=='email-already-in-use'){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Account already exists",style: TextStyle(fontSize: 18),)));
        }
      }
    }

  }






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
                height: MediaQuery.of(context).size.height/1.5,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25),),
                child: Form(
                  key: _formkey,
                  child: Column(children: [

                    SizedBox(height: 30,),
                    Text("SignUp", style: AppWidget.boldTextFieldStyle(),),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: namecontroller,
                      validator: (value){
                        if(value==null|| value.isEmpty){
                          return 'Please Enter a Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(hintText: 'Name',hintStyle: AppWidget.normalFieldStyle(),prefixIcon: Icon(Icons.person_2_outlined)),

                    ),

                    SizedBox(height: 20,),
                    TextFormField(
                      controller: mailcontroller,
                      validator: (value){
                        if(value==null|| value.isEmpty){
                          return 'Please Enter a E-mail';
                        }
                        return null;
                      },
                      decoration: InputDecoration(hintText: 'Email',hintStyle: AppWidget.normalFieldStyle(),prefixIcon: Icon(Icons.email_outlined)),


                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: passwordcontroller,
                      validator: (value){
                        if(value==null|| value.isEmpty){
                          return 'Please Enter a Password';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Password',hintStyle: AppWidget.normalFieldStyle(),prefixIcon: Icon(Icons.key_outlined)),


                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () async{
                        if (_formkey.currentState!.validate()){
                          setState(() {
                            email = mailcontroller.text;
                            name =namecontroller.text;
                            password = passwordcontroller.text;
                          });
                        }
                        registration();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
                      },
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(23),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          width: 200,
                          decoration: BoxDecoration(color: Color(0xFF185A9D),borderRadius: BorderRadius.circular(23)),
                          child: Center(child: Text("SignUp", style: AppWidget.loginbuttonStyle())),
                        ),
                      ),
                    ),
                    SizedBox(height: 25,),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> LogIn()));
                        },
                        child: Text("Already have an account? Login",style: AppWidget.lightTextFieldStyle(),))
                  ],),
                ),
              ),
            )
          ],),
        )
      ],),),
    );
  }
}
