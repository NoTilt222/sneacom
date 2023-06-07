import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Image.asset('assets/images/nikelogo.png',
            height: 240,  width: 240,),
          ),

          const SizedBox(height: 48,),

          const Text("Just Do It",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
          ),

          const SizedBox(height: 24),


          const Text("Brand new sneakers and custom kicks made with premium quality",
            style: TextStyle(
                fontSize: 20,
              color: Colors.grey
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 48),

          GestureDetector(
            onTap: ()=> Navigator.push
              (context,
                MaterialPageRoute(
                    builder: (context)=> HomePage(),
            ),
            ),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(25),
              child: const Text("Shop Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
