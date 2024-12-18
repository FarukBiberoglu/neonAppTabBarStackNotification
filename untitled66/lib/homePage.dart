import 'package:flutter/material.dart';

void main() {
  runApp(HarryPotterApp());
}

class HarryPotterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HarryPotterScreen(),
    );
  }
}

class HarryPotterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Harry Potter's Stack View Challenge")),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: screenWidth * 0.1,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.blue.withOpacity(0.6),
                child: Text(
                  'Expelliarmus',
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              left: screenWidth * 0.1,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.red.withOpacity(0.6),
                child: Text(
                  'Lumos',
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.5,
              left: screenWidth * 0.1,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.green.withOpacity(0.6),
                child: Text(
                  'Alohomora',
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.7,
              left: screenWidth * 0.1,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.purple.withOpacity(0.6),
                child: Text(
                  'Expecto Patronum',
                  style: TextStyle(
                    fontSize: screenWidth * 0.07,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
