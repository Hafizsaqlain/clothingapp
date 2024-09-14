import 'package:clotingapp/CartScreen.dart';
import 'package:clotingapp/HomePage.dart';
import 'package:flutter/material.dart';



class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        backgroundColor: const Color(0xffB46465),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  product.AssetImage,
                  height: 150,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                product.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const SizedBox(width: 5),
                  Text('${product.rating}', style: const TextStyle(fontSize: 16)),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                '\$${product.price}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Product Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Top your traditional wear with an exquisite  from Clothing App.',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Size',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: ['S', 'M', 'L', 'XL'].map((size) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: ChoiceChip(
                      label: Text(size),
                      selected: size == 'M',
                    ),
                  );
                }
                ).toList(),
              ),
              const SizedBox(height: 16),
              const Text(
                'Select Color',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [ const Color(0xffB46465), Colors.black, Colors.grey].map((color) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: color,
                      radius: 15,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const CartScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffB46465),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Add to Cart', style: TextStyle(fontSize: 16,color:Colors.black ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
