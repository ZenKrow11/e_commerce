import 'package:flutter/material.dart';
import '/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 400,
          height: 500,
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [

                // Show pic
                Container(
                  width: 300,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Image.asset(
                      shoe.imagePath,
                      width: 250,
                      height: 250,
                    ),
                  ),
                ),

                SizedBox(width: 8), // spacing

                // Description and price in a column
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //shoe name
                      Text(shoe.name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                      //price
                      Text(shoe.price,
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                ),


                    SizedBox(height: 35),

                    //Add to cart button
                InkWell(
                  onTap: onTap,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_shopping_cart, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "ADD TO BASKET",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
                  ],
                )
          ),
            ),
          ),
        );
  }
}