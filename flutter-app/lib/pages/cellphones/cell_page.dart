import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/app_drawer.dart';
import 'package:http/http.dart' as http;

class CellPhonesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celulares'),
      ),
      drawer: AppDrawer(),
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                print(snapshot);
                if (snapshot.data != null) {
                  return Text(snapshot.data.toString());
                } else {
                  return Text('Carregando');
                }
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: (Icon(Icons.add)),
        onPressed: () {
          getData();
        },
      ),
    );
  }

  Future<dynamic> getData() async {
    const url = 'http://10.0.75.1:3000/products/electro';
    http.Response response = await http.get(url);
    var body = json.decode(response.body);
    return body;
  }
}
