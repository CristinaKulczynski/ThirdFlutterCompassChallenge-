import 'package:flutter/material.dart';

AppBar efeitoAppBar() {
  return AppBar(
    title: const Text('Immune'),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.bottomLeft,
            colors: <Color>[
              Color.fromRGBO(30, 26, 75, 1.0),
              Color.fromRGBO(32, 37, 141, 1),
              Color.fromRGBO(74, 148, 222, 1.0),

            ]),
      ),
    ),
  );
}