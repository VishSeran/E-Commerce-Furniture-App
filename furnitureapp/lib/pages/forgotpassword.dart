import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController mailcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(children: [
         SizedBox(height: 70.0,),
        Container(
          alignment: Alignment.topCenter,
          child: Text("Password Recovery",style: TextStyle(
              color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold ),),
        ),
        SizedBox(height: 10.0,),
        Text("Enter your mail",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),),

        Expanded(child: Form(child: Padding(padding: EdgeInsets.only(left: 10,),
          child: ListView(children: [
            Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white70,width: 2.0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextFormField(
                controller: mailcontroller,
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please Enter Email';
                  }
                  return null;
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 18.0,color: Colors.white),
                  prefixIcon: Icon(Icons.person,color: Colors.white70,size: 30,),border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 40.0,),
            Container(
              margin: EdgeInsets.only(left: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.black,borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text("Send Email",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            )
          ],),
         ),))
      ],),)
    );
  }
}
