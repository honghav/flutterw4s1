import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(

    home: Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                HobbyCard(icon: Icons.travel_explore, title: 'Travelling'),
                HobbyCard(icon: Icons.skateboarding, title: 'Stacking')
          ]),
        ),

      ),
    ),
  )
  );
}


class HobbyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const HobbyCard({
    Key? key,
    required this.icon,
    required this.title,
    this.color = Colors.blue, // Optional parameter with default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.white),
          const SizedBox(width: 10),
          Text(
             title,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
