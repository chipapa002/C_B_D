
import 'package:flutter/material.dart';
import 'package:tradelink_app/data/products_data.dart';
import 'package:tradelink_app/models/products.dart';

import 'scrollable_widget.dart';

class SortablePage extends StatefulWidget {
  @override
  _SortablePageState createState() => _SortablePageState();
}

class _SortablePageState extends State<SortablePage> {
  late List<Product> products;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();

    this.products = List.of(all_produts);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScrollableWidget(child: buildDataTable()),
      );

  Widget buildDataTable() {
    final columns = ['SKU', 'Name', 'Category', 'Description', 'Quantity', 'Price', 'Supplier', 'Restock', 'Picture',];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(products),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: onSort,
          ))
      .toList();

  List<DataRow> getRows(List<Product> productS) => productS.map((Product product) {
        final cells = [product.SKU, product.name, product.category, product.description, product.quantity, product.price, product.supplier, product.restock, product.picture];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      products.sort((product1, product2) =>
          compareString(ascending, product1.SKU, product2.SKU));
    } else if (columnIndex == 1) {
       products.sort((product1, product2) =>
          compareString(ascending, product1.name, product2.name));
    } else if (columnIndex == 4) {
       products.sort((product1, product2) =>
          compareString(ascending, product1.quantity.toString(), product2.quantity.toString()));
    }
     else if (columnIndex == 5) {
       products.sort((product1, product2) =>
          compareString(ascending, product1.price.toString(), product2.price.toString()));
    }
     else if (columnIndex == 6) {
       products.sort((product1, product2) =>
          compareString(ascending, product1.supplier, product2.supplier));
    }
     else if (columnIndex == 2) {
       products.sort((product1, product2) =>
          compareString(ascending, product1.category, product2.category));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}