import 'package:flutter/material.dart';
import 'package:medicalapp/screens/login/login.dart';


class Walkthrough extends StatelessWidget {
  const Walkthrough({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(

          children: [
            Image(image: AssetImage('assets/images/walkthrough.png')),
            Text("View and Buy",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Text("Medicine Online",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),



            Text("Etim Molis metus non purus",style: TextStyle(
              fontSize: 12,color: Colors.grey,
            ),),
      Text("faucibus solicloudin Pellentesque",style: TextStyle(
        fontSize: 12,color: Colors.grey,
      ),),
      Text("saggitas mi integer",style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.grey),
                ),onPressed: (){}, child: Text("skip",style: TextStyle(
                  color: Colors.black,
                ),),
                ),

                Row(

                  children: [
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      width: 10,
                      height: 30,

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      width: 10,
                      height: 30,

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      width: 10,
                      height: 30,

                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      width: 10,
                      height: 30,

                    ),
                  ],
                ),





              TextButton(onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const Login()));
              },child: Text("Next",style: TextStyle(color: Colors.blue),)),
             ],
            ),
          ],


        ),
      )
    );
  }
}