import 'package:flutter/material.dart';
import 'package:medicalapp/componets/profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text("My profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
    ),
    ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orange,
      ),title: Text("Hi, Azhar Iqbal"),
      subtitle: Text("Wellcome to Quick Medical Store"),
    ),
    ProfileComponent(
      icon: (Icons.edit_note_outlined),
      
      title: 'Edit Profile',
      aerosign: (Icons.arrow_forward_ios_sharp),
    ),
 Divider(height: 10,indent: 34,),
    ProfileComponent(
      icon: (Icons.description_outlined),
      title: 'MY order',
      aerosign: (Icons.arrow_forward_ios_sharp),
    ),
   Divider(height: 10,indent: 34,),
    ProfileComponent(
      icon: (Icons.access_time),
      title: 'Biling',
      aerosign: (Icons.arrow_forward_ios_sharp),
    ),
   Divider(height: 10,indent: 34,),
    ProfileComponent(
      icon: (Icons.question_mark_outlined),
      title: 'Faq',
      aerosign: (Icons.arrow_forward_ios_sharp),
    ),
  ],
),
    );
  }
}