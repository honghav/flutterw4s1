import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("Products"),
      backgroundColor: Colors.pinkAccent,
    ),backgroundColor: Colors.grey,
    body: const Padding(
      padding: EdgeInsets.all(10),

      child: Column(
        children: [
          Button(
            text_button: "Click Me",
            color_button: Colors.blueAccent,
            icon: Icon(Icons.check), // Example icon
          ),
          Button(
            text_button: "Time",
            color_button: Colors.green,
            icon: Icon(Icons.access_time), // Example icon
          ),
          Button(
            text_button: "Account",
            color_button: Colors.white54,
            icon: Icon(Icons.account_circle), // Example icon
          ),
        ],
      ),
    ),
  ),
));

class Button extends StatelessWidget {
  final String text_button;
  final Color color_button;
  final Icon icon;

  const Button({
    Key? key,
    required this.text_button,
    required this.color_button,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey, // Text color
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 12.0),
        backgroundColor: color_button,
        textStyle: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        // elevation: 5, // Shadow effect
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon, // Removed const
          const SizedBox(width: 8),
          Text(text_button),
        ],
      ),
    );
  }
}
