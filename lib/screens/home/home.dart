import 'package:flutter/material.dart';
import 'package:medicalapp/componets/botilebox.dart';
import 'package:medicalapp/screens/ProductDetail/ProductDetail.dart';
import 'package:medicalapp/screens/cart/cart.dart';
import 'package:medicalapp/screens/profile/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  //  Pages for bottom navigation
  final List<Widget> _pages = [
    const HomeContent(), 
    Productdetail(),
    Cart(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 185, 185),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        leading: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          },
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/navbar.png'),
          ),
        ),
        title: const Column(
          children: [
            Text("Hi, Azhar", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("Welcome to Quick Medical Store"),
          ],
        ),
        actions: const [
          Icon(Icons.notification_add),
          SizedBox(width: 10),
          Icon(Icons.calendar_month),
          SizedBox(width: 10),
        ],
      ),

      //  Dynamically switch between pages
      body: _pages[_selectedIndex],

      //  Proper BottomNavigationBar placement
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

///  Separate widget for Home UI content
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text("Top Categories"),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCategory("Dental", Colors.pink),
              _buildCategory("Wellness", Colors.green),
              _buildCategory("Homeo", Colors.orange),
              _buildCategory("Eye care", Colors.blue),
            ],
          ),
          const SizedBox(height: 20),

          const Image(
            image: AssetImage('assets/images/home_offer_image_section.png'),
          ),

          const ListTile(
            leading: Text(
              "Deals of the Day",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            trailing: Text("More", style: TextStyle(color: Colors.blue)),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                children: [
                  Botilebox(
                    image: 'assets/images/image138.png',
                    name: "Accu-check Active",
                    sname: "Test Strip",
                    price: "RS .112",
                  ),
                  const SizedBox(width: 25),
                  Botilebox(
                    image: 'assets/images/image138.png',
                    name: "Accu-check Active",
                    sname: "Test Strip",
                    price: "RS .112",
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: [
                    Botilebox(
                      image: 'assets/images/image138.png',
                      name: "Accu-check Active",
                      sname: "Test Strip",
                      price: "RS .112",
                    ),
                    const SizedBox(width: 25),
                    Botilebox(
                      image: 'assets/images/image138.png',
                      name: "Accu-check Active",
                      sname: "Test Strip",
                      price: "RS .112",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildCategory(String title, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Colors.white,
      ),
      width: 70,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(backgroundColor: color),
          const SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}
