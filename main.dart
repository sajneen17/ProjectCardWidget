import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Customizable Card Example'),
        ),
        body: SingleChildScrollView(
          // Scrollable content to prevent overflow
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Example of a normalized, customizable Card
                CustomCard(
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, size: 50, color: Colors.white),
                      SizedBox(height: 20), // Increase spacing here
                      Text('Default Rounded Card',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  color: Colors.blue,
                  height: 150, // Increased height
                ),
                SizedBox(height: 20),

                // Custom Card with circular shape and custom content
                CustomCard(
                  content: Center(
                    child: Text('Circular Card',
                        style: TextStyle(color: Colors.white)),
                  ),
                  color: Colors.orange,
                  shape: CircleBorder(),
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20),

                // Custom Card with stadium shape
                CustomCard(
                  content: Center(
                    child: Text('Stadium Card',
                        style: TextStyle(color: Colors.white)),
                  ),
                  color: Colors.purple,
                  shape: StadiumBorder(),
                  height: 80,
                ),
                SizedBox(height: 20),

                // Custom Card with bevel shape
                CustomCard(
                  content: Center(
                    child: Text('Beveled Card',
                        style: TextStyle(color: Colors.white)),
                  ),
                  color: Colors.green,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Normalized and customizable Card widget
class CustomCard extends StatelessWidget {
  final Widget content;
  final Color color;
  final ShapeBorder shape;
  final double elevation;
  final double width;
  final double height;

  CustomCard({
    required this.content,
    this.color = Colors.white,
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
    ),
    this.elevation = 4.0,
    this.width = double.infinity,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color, // Custom or default color
      shape: shape, // Custom or default shape
      elevation: elevation, // Custom or default elevation
      child: Container(
        width: width, // Custom or default width
        height: height, // Custom or default height
        padding: EdgeInsets.all(16.0),
        child: content, // Custom content
      ),
    );
  }
}

