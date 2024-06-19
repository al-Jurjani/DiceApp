// My First App!
import 'package:flutter/material.dart'; // This includes the runApp() method,
import 'package:dice_app/vis_container.dart';

// among others.
void main() {
  // Gets executed automatically.
  runApp(
    // A function that runs the app you built, provided by Flutter. Argumet is a Widget.
    const MaterialApp(
      home: Scaffold(
        body: VisContainer(Colors.deepPurple, Colors.pinkAccent),
      ),
    ),
  );
  // Uses refactoring for creating widget trees, much more efficient.
}
