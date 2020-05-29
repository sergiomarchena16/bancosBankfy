// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(bank());

class bank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Banco Industrial',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  'Guatemala',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'LLAMAR'),
          _buildButtonColumn(color, Icons.near_me, 'IR'),
          _buildButtonColumn(color, Icons.share, 'COMPARTIR'),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text.rich(
        TextSpan(
        children: <TextSpan> [
          TextSpan(text: 'Apertura de Cuentas:', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - DPI"),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - Recibo de Agua, Luz o Telefono"),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - Carta de Trabajo"),
          TextSpan(text: "\n\n"),
          TextSpan(text: 'Tarjeta de Credito:', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - DPI"),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - Recibo de Agua, Luz o Telefono"),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - Carta de Trabajo"),
          TextSpan(text: "\n\n"),
          TextSpan(text: 'Prestamos:', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - DPI"),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - Recibo de Agua, Luz o Telefono"),
          TextSpan(text: "\n\n"),
          TextSpan(text: "  - Carta de Trabajo"),
          TextSpan(text: "\n\n"),
        ],
      ),
      )
    );

    return MaterialApp(
      title: 'Banco 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Banco 1'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/BI.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            ],
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}