import 'package:flutter/material.dart';
import 'package:medicalapp/componets/botilebox.dart';
import 'package:medicalapp/screens/profile/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 185, 185),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,

        leading: TextButton(onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile())),
        },
          child: CircleAvatar(backgroundImage: AssetImage('assets/images/navbar.png'),)),
        title: Column(
          children: [
            Text("Hi, Azhar", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Wellcome to Quick Medical Store"),
          ],
        ),
        actions: [
          Icon(Icons.notification_add),
          Padding(padding: EdgeInsets.only(right: 10)),

          Icon(Icons.calendar_month),
          Padding(padding: EdgeInsets.only(left: 10)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("top Categories"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  width: 60,
                  height: 100,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      CircleAvatar(backgroundColor: Colors.pink),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text("Dental")),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  width: 60,
                  height: 100,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      CircleAvatar(backgroundColor: Colors.green),
                      Container(
                         margin: EdgeInsets.only(top: 20),
                        child: Text("Wellness")),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  width: 60,
                  height: 100,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      CircleAvatar(backgroundColor: Colors.orange),
                      Container(
                         margin: EdgeInsets.only(top: 20),
                        child: Text("Homeo")),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  width: 60,
                  height: 100,
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      CircleAvatar(backgroundColor: Colors.blue),
                      Container(
                         margin: EdgeInsets.only(top: 20),
                        child: Text("Eye care")),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 10, height: 10),

            Image(
              image: AssetImage('assets/images/home_offer_image_section.png'),
            ),

            ListTile(
              leading: Title(
                color: Colors.white,
                child: Text(
                  "Deals of the Days",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Container(
                margin: EdgeInsets.only(right: 30),
                child: Text("More", style: TextStyle(color: Colors.blue))),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: [
                    Botilebox(
                      image: 'assets/images/image138.png',
                      name: ("Accu-check Active"),
                      sname: ("Test Strip"),
                      price: (" RS .112"),
                    ),
                    SizedBox(width: 25),

                    Botilebox(
                      image: 'assets/images/image138.png',
                      name: ("Accu-check Active"),
                      sname: ("Test Strip"),
                      price: (" RS .112"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 100,height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: [
                    Botilebox(
                      image: 'assets/images/image138.png',
                      name: ("Accu-check Active"),
                      sname: ("Test Strip"),
                      price: (" RS .112"),
                    ),
                    SizedBox(width: 25),

                    Botilebox(
                      image: 'assets/images/image138.png',
                      name: ("Accu-check Active"),
                      sname: ("Test Strip"),
                      price: (" RS .112"),
                    ),
                  ],
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
