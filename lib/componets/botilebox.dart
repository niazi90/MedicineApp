import 'package:flutter/material.dart';
import 'package:medicalapp/screens/ProductDetail/ProductDetail.dart';

class Botilebox extends StatelessWidget {
 final String image;
final  name;
final sname;
final  price;
Botilebox({
  this.name,
  this.sname,
   required this.image, 
  this.price,

});


  @override
  Widget build(BuildContext context) {
    return  Wrap(
      
      children: [Container(
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        TextButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Productdetail())),
          },
          child: Center(child: Image.asset(image))),
        Text(name,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
        Text(sname, style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
        Text(price, style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),),
        
          ]),
      ),],
    );

  
  }
}