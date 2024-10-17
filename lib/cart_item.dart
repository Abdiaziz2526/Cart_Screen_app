import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final String title;
  final String imageUrl;
  final double price;

  const CartItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.price,
  }) : super(key: key);

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 0;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 130, // Reduced height
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(1, 1),
            spreadRadius: 0.5,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 135,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(height: 8),
                Text(
                  "\$${widget.price.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                       height: 33, width: 33,
                      decoration: BoxDecoration(
                        color: Color(0xfff8829a), // Background color for the button
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: increment,
                        icon: Icon(Icons.add, color: Colors.white, size: 19,),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      quantity.toString(),
                      style: TextStyle(fontSize: 21),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 33, width: 33,
                      decoration: BoxDecoration(
                        color: Color(0xfff8829a), // Background color for the button
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: decrement,
                        icon: Icon(Icons.remove, color: Colors.white, size: 19,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 50), // Reduced spacing
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 240, 240),
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: () {}, // Delete action
              icon: Icon(Icons.delete_outline, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
