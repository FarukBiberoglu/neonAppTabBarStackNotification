import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IronManScrollView(),
  ));
}

class IronManScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Iron Man's Scrollview Rescue"),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollEndNotification &&
              scrollNotification.metrics.extentAfter == 0) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("Alert"),
                content: Text("You have reached the end of the scroll view."),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text("OK"),
                  ),
                ],
              ),
            );
          }
          return true;
        },
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                8,
                    (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    color: Colors.blueAccent,
                    child: Text(
                      "Label ${index + 1}",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}