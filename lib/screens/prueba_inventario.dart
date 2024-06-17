import 'package:flutter/material.dart';

class Prueba extends StatefulWidget {
  const Prueba({super.key});

  @override
  State<Prueba> createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  int existencia = 5;
  //final productos = ['Producto 1', 'Producto 2', 'Producto 4', 'Producto 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DataTable(
            sortColumnIndex: 2,
            sortAscending: false,
            columns: [
              DataColumn(label: Text("Producto")),
              DataColumn(label: Text("Descripción")),
              DataColumn(label: Text("Stock")),
              DataColumn(label: Text("Estatus"), numeric: true),
              DataColumn(label: Text("Acción"))
            ],
            rows: [
              DataRow(selected: true, cells: [
                DataCell(Text("Fertilizante")),
                DataCell(Text("Descripción de fertilizante")),
                DataCell(Text("5")),
                DataCell(Text("Disponible")),
                DataCell(Icon(Icons.edit))
              ]),
              DataRow(cells: [
                DataCell(Text("Pala")),
                DataCell(Text("Descripción de pala")),
                DataCell(Text("3")),
                DataCell(Text("Disponible")),
                DataCell(Icon(Icons.edit))
              ])
            ],
          )
        ],
      ),
    );
  }
}
