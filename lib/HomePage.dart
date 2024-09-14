import 'package:clotingapp/ProductDetailsPage.dart';

import 'package:flutter/material.dart';
  


class Product {
  final String name;
  // ignore: non_constant_identifier_names
  final String AssetImage;
  final double price;
  final double rating;

  Product({
    required this.name,
    required this.AssetImage,
    required this.price,
    required this.rating,
  });
}


class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(
    
      name: 'Light Green T-Shirt',
      AssetImage: 'assets/homescreen.jpg', 
      price: 83.97,
      rating: 4.5,
    ),
    Product(
      name: 'Navy Blue T-Shirt ',
      AssetImage: 'assets/home1.jpg', 
      price: 120.00,
      rating: 5.0,
    ),
     Product(
    
      name: 'Off White T-Shirt',
      AssetImage: 'assets/home2.jpg', 
      price: 83.97,
      rating: 4.5,
    ),
    Product(
      name: 'Light Brown T-Shirt',
     AssetImage: 'assets/home3.jpg', 
      price: 120.00,
      rating: 5.0,
    ),
     Product(
    
      name: 'Gray White T-Shirt',
      AssetImage: 'assets/home4.jpg', 
      price: 83.97,
      rating: 4.5,
    ),
    Product(
    
      name: 'Light Gray T-Shirt',
      AssetImage: 'assets/t shirt 9.jpg', 
      price: 83.97,
      rating: 4.5,
    ),
    Product(
      name: 'Off White T-Shirt ',
      AssetImage: 'assets/t shirt 8.jpg', 
      price: 120.00,
      rating: 5.0,
    ),
     Product(
    
      name: 'Dark Gray T-Shirt',
      AssetImage: 'assets/t shirt 7.jpg', 
      price: 83.97,
      rating: 4.5,
    ),
 
  
  ];

   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: const Color(0xffB46465),
        elevation: 0,
        leading: const Icon(Icons.location_pin, color:  Color(0xffB46465)),
        title: const Text(
          'New York, USA',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(Icons.notifications_none, color:  Color(0xffB46465)),
        ],
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                ),

                  const SizedBox(height: 16),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.brown.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New Collection',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                    
                      ],
                  ),
                ),    
                 Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Category',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                      
                    
                    child: const Text('See All'),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/sleepwear_17519986.png'),height: 30,color: Color(0xffB46465)),
                  Image(image: AssetImage('assets/jacket_17672130.png'),height: 30,color:  Color(0xffB46465)),
                  Image(image: AssetImage('assets/pants_17697280.png'),height: 30,color:  Color(0xffB46465)),
                  Image(image: AssetImage('assets/shirt_17672103.png'),height: 30,color:  Color(0xffB46465))
                ],
                
              ),

            const Text('Flash Sale', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

            
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(product: products[index]),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                              child: Image.asset(
                                
                                products[index].AssetImage,
                                fit: BoxFit.cover,
                                
                                
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(products[index].name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                Text('\$${products[index].price}', style: const TextStyle(fontSize: 14)),
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber, size: 16),
                                    const SizedBox(width: 4),
                                    Text('${products[index].rating}', style: const TextStyle(fontSize: 14)),
                                  ],
                                ),
                                
                                
                               
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
