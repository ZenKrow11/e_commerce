import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset('lib/images/nike.png',
              height: 300,),
              Text("Just Do It",
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 50.0),

              //subtitle
              Text("Newest sneakers on the market",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22
              ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 100.0),
              
              //button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  fixedSize: Size(350, 75,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text('Shop Now'),
              )

            ]
              ),
        ),
      ),
    );
  }
}