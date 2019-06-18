import 'package:flutter/material.dart';

//todo
class DataTableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable Demo"),
      ),
      body: Center(
        child: new ListView(
          children: <Widget>[
            new DataTable(
              columns: <DataColumn>[
                new DataColumn(
                    label: new GestureDetector(
                  onTap: () {
                    print('column 1 tap');
                  },
                  child: Text('column 1'),
                )),
                new DataColumn(
                    label: new GestureDetector(
                  onTap: () {
                    print('column 2 tap');
                  },
                  child: Text('column 2'),
                )),
                new DataColumn(
                    label: new GestureDetector(
                  onTap: () {
                    print('column 3 tap');
                  },
                  child: Text('column 3'),
                )),
              ],
              rows: <DataRow>[
                new DataRow(cells: <DataCell>[
                  new DataCell(Text('cell 1'), onTap: () {
                    print('cell 1 tap');
                  }),
                  new DataCell(Text('cell 2'), onTap: () {
                    print('cell 2 tap');
                  }),
                  new DataCell(Text('cell 3'), onTap: () {
                    print('cell 3 tap');
                  }),
                ]),
                new DataRow(cells: <DataCell>[
                  new DataCell(Text('cell 4'), onTap: () {
                    print('cell 4 tap');
                  }),
                  new DataCell(Text('cell 5'), onTap: () {
                    print('cell 5 tap');
                  }),
                  new DataCell(Text('cell 6'), onTap: () {
                    print('cell 6 tap');
                  }),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DataTableS extends DataTableSource {
  @override
  DataRow getRow(int index) {
    // TODO: implement getRow
    return null;
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => null;

  @override
  // TODO: implement rowCount
  int get rowCount => null;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => null;
}
