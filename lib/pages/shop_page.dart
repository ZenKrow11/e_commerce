import 'package:e_commerce_tut/components/shoe_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 35.0),
            decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                )            ,
                  Icon(Icons.search,
                    color: Colors.grey,
                  ),
              ],
            ),
    ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text("Hot Picks",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
              ),
              Text("See All",
              style: TextStyle(
                  color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
            ),
          ),

          const SizedBox(height: 20),

          Expanded(child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) => ShoeTile(
          ),

          )
          ),
        ]
    );
  }
}
