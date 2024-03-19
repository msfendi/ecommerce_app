import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: const <DataColumn2>[
            DataColumn2(
              label: Text('Name'),
              size: ColumnSize.L,
            ),
            DataColumn2(
              label: Text('Age'),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('Role'),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('Year'),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text('Action'),
              size: ColumnSize.S,
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
                DataCell(Text('2020')),
                DataCell(Text('')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
                DataCell(Text('2012')),
                DataCell(Text('')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
                DataCell(Text('2014')),
                DataCell(Text('')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('John')),
                DataCell(Text('35')),
                DataCell(Text('Dean')),
                DataCell(Text('2010')),
                DataCell(Text('')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
