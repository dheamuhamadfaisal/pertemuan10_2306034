import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pertemuan10_2306034/models/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Produk')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            product.image.isNotEmpty
            ? Image.memory(
              base64Decode(product.image),
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            )
            : const Icon(Icons.image, size: 250),
            Text(
              product.name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Rp ${product.price}'),
            const SizedBox(height: 10),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}