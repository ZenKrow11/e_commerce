import 'package:e_commerce_tut/components/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            // header
            Text(
              "My Basket",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // cart items
            Expanded(
              child: ListView.builder(
                itemCount: value.getCart().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getCart()[index];
                  return CartItem(shoe: shoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
