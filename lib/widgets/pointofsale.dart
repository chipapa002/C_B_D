import 'package:flutter/material.dart';

class POSInterface extends StatefulWidget {
  @override
  _POSInterfaceState createState() => _POSInterfaceState();
}

class _POSInterfaceState extends State<POSInterface> {
  // Hardcoded list of products
  final List<Map<String, dynamic>> products = [
    {"id": "001", "name": "Apple", "price": 1.50},
    {"id": "002", "name": "Banana", "price": 0.75},
    {"id": "003", "name": "Orange", "price": 1.00},
  ];

  List<Map<String, dynamic>> cartItems = []; // List to store items in the cart

  // Simulated scan function: adds the first product to cart
  void scanProduct() {
    final product = products[0]; // Hardcoded to always add the first product
    setState(() {
      cartItems.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point of Sale'),
      ),
      body: Row(
        children: [
          // Product Catalog
          Expanded(
            flex: 3,
            child: ProductCatalog(products: products),
          ),
          // Cart and Transaction Summary
          Expanded(
            flex: 2,
            child: CartSummary(cartItems: cartItems),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: scanProduct,
        child: Icon(Icons.camera_alt), // Scan Button
        tooltip: 'Scan Product',
      ),
    );
  }
}

class ProductCatalog extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductCatalog({required this.products});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Products',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductItem(
                id: product["id"],
                name: product["name"],
                price: product["price"],
              );
            },
          ),
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final String id;
  final String name;
  final double price;

  ProductItem({required this.id, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(child: Icon(Icons.fastfood, size: 50)),
          Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text('ID: $id'),
          Text('\$$price', style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class CartSummary extends StatelessWidget {
  final List<Map<String, dynamic>> cartItems;

  CartSummary({required this.cartItems});

  double calculateTotal() {
    return cartItems.fold(0, (total, item) => total + item["price"]);
  }

  void generateDigitalSlip() {
    print("Generating digital slip...");
    for (var item in cartItems) {
      print("${item['name']} - \$${item['price']}");
    }
    print("Total: \$${calculateTotal()}");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Cart',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              final item = cartItems[index];
              return ListTile(
                title: Text('${item["name"]}'),
                subtitle: Text('ID: ${item["id"]} - Price: \$${item["price"]}'),
              );
            },
          ),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Total: \$${calculateTotal().toStringAsFixed(2)}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: generateDigitalSlip,
          child: Text('Generate Digital Slip'),
        ),
      ],
    );
  }
}
