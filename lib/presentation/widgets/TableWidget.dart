// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, prefer_typing_uninitialized_variables

import "package:flutter/material.dart";

class TableWidget extends StatelessWidget {
  final List<String> data;

  const TableWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [DataColumn(label: Text('Name'))],
      rows: List.generate(data.length, (index) {
        final x = data[index];
        return DataRow(cells: [
          DataCell(
            Text(x),
            onTap: () =>
                {Navigator.pushNamed(context, '/addProject', arguments: x)},
          )
        ]);
      }),
    );
  }
}
