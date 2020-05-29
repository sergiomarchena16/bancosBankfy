import 'package:bancos/bank.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Lista de Bancos')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}
Widget _myListView(BuildContext context) {

  final titles = ['BANCO INDUSTRIAL', 'BANCO G&T CONTINENTAL', 'BANRURAL', 'BAM',
    'BAC', 'PROMERICA', 'BANTRAB', 'BANCO AZTECA'];

  final icons = [Icons.directions_bike, Icons.directions_boat,
    Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
    Icons.directions_run, Icons.directions_subway, Icons.directions_transit];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card( //
        //                         <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index]),
          onTap: () {
            print("tapped");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => bank()),
            );
          },
        ),
      );
    },
  );
}