import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text("Products"),
      backgroundColor: Colors.pinkAccent,
    ),
    backgroundColor: Colors.blueAccent,
    body: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ProductCard(product: Product.dart),
          ProductCard(product: Product.firebase),
          ProductCard(product: Product.flutter),
        ],
      ),
    ),
  ),
));

enum Product {
  dart(
    title: "Dart",
    description: "The best Object language",
    imagePath: "assets/images/dart.png",
  ),
  firebase(
    title: "Firebase",
    description: "The best cloud database",
    imagePath: "assets/images/firebase.png",
  ),
  flutter(
    title: "Flutter",
    description: "The best mobile widget library",
    imagePath: "assets/images/flutter.png",
  );

  final String title;
  final String description;
  final String imagePath;

  const Product({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imagePath,
              width: 80,
              height: 80,
            ),
            const SizedBox(height: 8),
            Text(
              product.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              product.description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
