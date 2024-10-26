import 'package:flutter/material.dart';
import 'package:tradelink_app/widgets/header_text.dart';



class ReportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          HeaderText(title: "Reports", description: "Sales provides a comprehensive review of the overall sales of the business. This review improves strategic decisions of the business."),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Filter',
                border: OutlineInputBorder(),
              ),
              items: <String>['All', 'This Month', 'This Year']
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (_) {},
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 3,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  _buildMetricCard(Icons.attach_money, 'Sales Report', 'Total business sales for e-commerce and traditional commerce.'),
                  _buildMetricCard(Icons.bar_chart, 'Revenue Report', 'The total income generated from sales.'),
                  _buildMetricCard(Icons.shopping_cart, 'Average Order Report', 'The average amount spent per order.'),
                  _buildMetricCard(Icons.people_rounded, 'Customer Trend Report', 'The total number of units sold.'),
                  _buildMetricCard(Icons.inventory_rounded, 'Inventory Report', 'The percentage of customers who make multiple purchases.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMetricCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Expanded(child: Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey))),
          ],
        ),
      ),
    );
  }
}