import 'package:flutter/material.dart';
import 'cart_item.dart'; // Import the CartItem widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffafafa),
        appBar: AppBar(
          
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black), // Back arrow
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "My Cart", // Title
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xfffafafa),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              CartItem(
                title: "Toorto Special 2",
                imageUrl: "assets/placeholder.jpg",
                price: 10.0,
              ),
              CartItem(
                title: "Toorto Special 3",
                imageUrl: "assets/placeholder.jpg",
                price: 15.0,
              ),
              SizedBox(height:  360),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(color: Colors.black54, fontSize: 17),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$25",
                              style: TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 65,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Color(0xffef4162),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(2, 2),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: Text(
                        "Order Now",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
