import 'package:flutter/material.dart';
import 'package:furnitureapp/widget/widget_support.dart';
import 'details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool chair = false, table = false, sofa = false, bed = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        margin:  EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              "Furniture Universe", style: AppWidget.boldTextFieldStyle()
          ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.lightGreen, borderRadius: BorderRadius.circular(10)),
              child: Icon(Icons.shopping_bag, color: Colors.white,),
            )
          ],
          ),
          SizedBox(height: 30.0,),
          Text(
              "Creative Furniture", style: AppWidget.headerTextFieldStyle()
          ),
            Text(
                "Discover and Get Great Furniture", style: AppWidget.lightTextFieldStyle(),),
              SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(right: 20.0),
                child: showItem()),
            SizedBox(height: 30.0,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Details() ));
                  },
                  child: Container(
                    margin:EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("assets/images/chair1.jpg", height: 150, width: 150, fit: BoxFit.cover,),
                            SizedBox(height: 5.0,),
                          Text("Indoor Rest Place", style: AppWidget.headerTopicFieldStyle(),),
                          SizedBox(height: 5.0,),
                          Text("Lovely and Quiet", style: AppWidget.lightTextFieldStyle(),),
                          Text("\Rs: 8999", style: AppWidget.headerTopicFieldStyle(),)
                  
                        ],),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 15,),
                
                Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/chair2.jpg", height: 150, width: 150, fit: BoxFit.cover,),
                          SizedBox(height: 5.0,),
                          Text("Indoor Work Place", style: AppWidget.headerTopicFieldStyle(),),
                          SizedBox(height: 5.0,),
                          Text("Work and Relax", style: AppWidget.lightTextFieldStyle(),),
                          Text("\Rs: 11999", style: AppWidget.headerTopicFieldStyle(),)
                  
                        ],),
                    ),
                  ),
                )
              ],),
            ),

            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("assets/images/chair4.jpg",height: 120,width: 120, fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("Luxury Rest Place",style: AppWidget.headerTopicFieldStyle(),)),
                      SizedBox(height: 5.0,),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("With limited offers ",style: AppWidget.lightTextFieldStyle(),)),
                      Container(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text("\RS:25999 ",style: AppWidget.headerTopicFieldStyle(),))
                    ],)
                  ],),
                ),
              ),
            ),






      ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        GestureDetector(
          onTap: (){
            chair = true;
            table = false;
            sofa = false;
            bed = false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: chair?Colors.black: Colors.white,borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/chair.jpg", height: 40.0,width: 40.0,fit: BoxFit.cover,),
            ) ,
          ),
        ),
        GestureDetector(
          onTap: (){
            chair = false;
            table = true;
            sofa = false;
            bed = false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: table?Colors.black: Colors.white,borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/table.jpg", height: 40.0,width: 40.0,fit: BoxFit.cover,),
            ) ,
          ),
        ),
        GestureDetector(
          onTap: (){
            chair = false;
            table = false;
            sofa = true;
            bed = false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: sofa?Colors.black: Colors.white,borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/sofa.jpg", height: 40.0,width: 40.0,fit: BoxFit.cover,),
            ) ,
          ),
        ),
        GestureDetector(
          onTap: (){
            chair = false;
            table = false;
            sofa = false;
            bed = true;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: bed?Colors.black: Colors.white,borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/bed.jpg", height: 40.0,width: 40.0,fit: BoxFit.cover,),
            ) ,
          ),
        ),

      ],);
  }
}
