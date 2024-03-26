import 'package:flutter/material.dart';
import 'package:furnitureapp/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  int a =1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,)),
          SizedBox(height: 20,),
          Image.asset("assets/images/chair1.jpg",width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/3, fit: BoxFit.fill,
          ),
            SizedBox(height: 15,),

            Row(

              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lovely and Quiet", style: AppWidget.headerDetailsFieldStyle(),),
                  Text("Indoor Rest Place", style: AppWidget.headerTextFieldStyle(),),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  if (a>1){
                    --a;
                  }

                  setState(() {
                    
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.remove,color: Colors.white,),
                ),
              ),
                SizedBox(width: 20,),
                Text(a.toString(), style: AppWidget.normalFieldStyle(),),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    ++a;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                )
            ],),
            SizedBox(height: 20,),
            Text("Introducing our stylish and comfortable chair, now available at an exclusive discounted price of Rs 8999! Elevate your seating experience with this sleek and modern design, crafted for both aesthetics and comfort. Whether you're furnishing your home office or adding a touch of sophistication to your living space, this chair is the perfect blend of quality and affordability. Don't miss out on this limited-time offer to bring luxury and relaxation into your home without breaking the bank. Upgrade your seating with our Rs 8999 chair – where style meets savings!",
            style: AppWidget.lightTextFieldStyle(),maxLines: 5,),
            SizedBox(height: 25.0,),
            Row(children: [
              Text("Delivery Time", style: AppWidget.normalFieldStyle(),),
              SizedBox(width: 25,),
              Icon(Icons.delivery_dining_outlined, color: Colors.black,),
              SizedBox(width: 5,),
              Text("30 min", style: AppWidget.normalFieldStyle(),),
            ],),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Total Price", style: AppWidget.normalFieldStyle(),),
                  Text("Rs: 8999", style: AppWidget.boldTextFieldStyle(),)
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Text("Add to cart", style: TextStyle(color: Colors.white,fontSize: 16),),
                    SizedBox(width: 30,),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                    ),
                      SizedBox(width: 10,),
                ],),)
              ],),
            )
      ],),),
    );
  }
}
