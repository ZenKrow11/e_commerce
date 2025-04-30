import 'package:e_commerce_tut/components/shoe_tile.dart';
import 'package:e_commerce_tut/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    //alert user
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${shoe.name} added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
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
              itemCount: value.getShoes().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoes()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addToCart(shoe),
                );
              }

          )
          ),
        ]
    )
    ,);
  }
}
