import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  final IconData?  icon;
  final  title;
  final IconData? aerosign;
  ProfileComponent({
  required this.icon,
 this.title,
  this.aerosign,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
        height: 40,
        color:const Color.fromARGB(255, 212, 208, 208),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
               
                children: [
                  Icon(icon),
                 
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(title)),
                ],

              ),
              
              Icon(aerosign),
            ],
          ),
        ),
      ],
    );
  }
}






