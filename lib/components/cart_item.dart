import 'package:flutter/material.dart';
import 'package:e_commerce_tut/models/shoe.dart';
import 'package:provider/provider.dart';
import '/models/cart.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: Image.asset(
              shoe.imagePath,
              width: 100 ,
              height: 75,
            ),
            title: Text(shoe.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text(shoe.price,
              style: TextStyle(
                fontSize: 20,
              ),
              ),
            trailing: IconButton(
              onPressed: () {
                Provider.of<Cart>(context, listen: false).removeFromCart(shoe);
              },
              icon: Icon(Icons.delete,
                color: Colors.red[400],
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
