import 'package:flutter/material.dart';
import 'package:medicalapp/screens/home/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(
        
           width: 200,
           height: 100,
            child: CircleAvatar(child: Image(image:AssetImage('assets/images/vector.png')))),
          Center(
            child: Text(
              "Quick Medical",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              
              ),
            ),
            
          ),
            SizedBox(height: 10,),
          Text("Plz Enter Your Mobile number\n to Login/Signup"),
          SizedBox(height: 5,),
          SizedBox(width: 300,
          height: 40,
            child: TextField(
              
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hint: Text("+919265614292"),
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(width:300,
          height: 30,
          child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const Home()));},style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
          ), child: Text("Continue",style: TextStyle(color: Colors.white),))),
        ],
        
      ),
    );
  }
}
