import 'package:clotingapp/CheckoutScreen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  
  
  List<Map<String, dynamic>> cartItems = [
    {"name": "Brown Jacket", "size": "XL", "price": 83.97, "quantity": 1},
    {"name": "Brown Suite", "size": "XL", "price": 120.00, "quantity": 1},
  ];

 
  void removeItem(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Remove from Cart?"),
          content: Text("Do you want to remove ${cartItems[index]['name']}?"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text("Cancel",style: TextStyle(color: Colors.blue[900])),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  cartItems.removeAt(index);
                });
                Navigator.of(context).pop(); 
              },
              child: const Text("Yes, Remove",style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }


  final promoController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    double subTotal = cartItems.fold(0, (sum, item) => sum + item['price']);

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: const Color(0xffB46465),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.brown[100],
                      child: Text(
                        cartItems[index]['name'][0],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(cartItems[index]['name']),
                    subtitle: Text("Size: ${cartItems[index]['size']}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (cartItems[index]['quantity'] > 1) {
                                cartItems[index]['quantity']--;
                              }
                            });
                          },
                        ),
                        Text("${cartItems[index]['quantity']}"),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              cartItems[index]['quantity']++;
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => removeItem(index),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        controller: promoController,
                        decoration: const InputDecoration(
                          labelText: "Promo Code",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffB46465)),
                      child: const Text("Apply",style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text("Sub-Total"),
                    Text("\$${subTotal.toStringAsFixed(2)}"),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Delivery Fee"),
                    Text("\$25.00"),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Discount"),
                    Text("- \$35.00"),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Total Cost",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "\$${(subTotal + 25 - 35).toStringAsFixed(2)}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const CheckoutScreen()));
                      
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15), backgroundColor: const Color(0xffB46465),
                    ),
                    child: const Text("Proceed to Checkout",style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
