import 'package:flutter/material.dart';
import 'package:medicalapp/screens/cart/cart.dart';

class Productdetail extends StatelessWidget {
  const Productdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
      
        actions: [Icon(Icons.alarm), Icon(Icons.calendar_month)]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 1200,
              height: 1200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sugar Free Gold Low Calories"),
                  Text("Etiam mollis metus non purus "),
                  Image(image: AssetImage('assets/images/group3666.png')),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Rs 99",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2,
                            decorationColor: Colors.grey,
                          ),
                        ),
                        Text(
                          "Rs 56",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                        SizedBox(width: 200),
                        Row(children: [Icon(Icons.add), Text("Add To Cart")]),
                      
                      ],
                      
                    ),
                    
                  ),
                    Divider(height: 10),
Text("Pacakge Size"),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 100,
      height: 70,
      // color: Colors.grey,
      decoration:
       BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.yellow),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Rs 106",style: TextStyle(fontSize: 18,color: Colors.yellow),),
          Text("500 Points",style: TextStyle(fontSize: 18,color: Colors.yellow),),
        ],
      ),
    ),
      SizedBox(width: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 70,
          // color: Colors.grey,
          decoration:
           BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rs 166",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("110 Plastes"),
            ],
          ),
        ),
      ],
    ),
    SizedBox(width: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 70,
          // color: Colors.grey,
          decoration:
           BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Rs 252",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("300 Plates"),
            ],
          ),
        ),
      ],
    ),
  ],
),

Text("Product Detail"),
SizedBox(
  width: 300,
  height: 150,
  child: Text("Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.")),
Text("Ingredients"),
SizedBox(
   width: 300,
  height: 150,
  child: Text("Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.")),


Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Expiray Date ",style: TextStyle(fontWeight: FontWeight.bold),),
    Text("25/12/2025"),

  ],
),
Row(
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
   Text("Brand Name ",style: TextStyle(fontWeight: FontWeight.bold),),
    Text("Something"),

  ],
),
Image(image: AssetImage('assets/images/feedback_section.png')),
SizedBox(
  width: 344,
  height: 25,
  child: ElevatedButton( style: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Colors.blue),
    
  ), onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Cart()));
  }, child: Text("Go to Card")),
),
















                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
