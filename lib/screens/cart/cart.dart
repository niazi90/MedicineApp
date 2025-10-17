import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
      ),
      body: SingleChildScrollView(  
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [

        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("2 items in your Cart",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: const [
                      Icon(Icons.add, color: Colors.blue),
                      SizedBox(width: 5),
                      Text("Add more"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

           
              _buildCartItem(
                image: 'assets/images/image 134 (1).png',
                name: 'Sugar Free Gold',
                description: 'Bottle of 500 pellets',
                price: 'Rs. 18',
              ),

              const SizedBox(height: 10),

         
              _buildCartItem(
                image: 'assets/images/image 135.png',
                name: 'Sugar Free Natural',
                description: 'Bottle of 1000 pellets',
                price: 'Rs. 25',
              ),

              const SizedBox(height: 20),

            
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Payment Summary",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),

              _buildSummaryRow("Order Total", "Rs. 43.00"),
              _buildSummaryRow("Item Discount", "-Rs. 10.00"),
              _buildSummaryRow("Coupon Discount", "-Rs. 5.00"),
              _buildSummaryRow("Shipping", "Rs. 10.00"),
              const Divider(),
              _buildSummaryRow("Total", "Rs. 38.00", isBold: true),
              SizedBox(
  width: 344,
  height: 25,
  child: ElevatedButton( style: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Colors.blue),
    
  ), onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Cart()));
  }, child: Text("Place an order")),
),
            ],
          ),
        ),
      ),
    );
  }

 
  Widget _buildCartItem({
    required String image,
    required String name,
    required String description,
    required String price,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.cancel, color: Colors.red),
                  ],
                ),
                const SizedBox(height: 5),
                Text(description,
                    style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 5),
                Text(price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _quantityButton(Icons.remove),
                    const SizedBox(width: 10),
                    const Text("1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(width: 10),
                    _quantityButton(Icons.add),
                  ],
                ),
              ],
              
            ),
            
          ),
          
        ],
      ),
      
    );
  }


  Widget _quantityButton(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(icon, size: 18),
    );
  }


  Widget _buildSummaryRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(value,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
                  
        ],
      ),
      
    );
  }
}
