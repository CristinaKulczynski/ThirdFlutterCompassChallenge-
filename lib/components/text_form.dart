import 'package:flutter/material.dart';

TextFormField buildTextFormField(String texto) {
  return TextFormField(
    decoration: InputDecoration(
      hintStyle: TextStyle(
        color: Color.fromARGB(255, 112, 111, 111),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      labelText: texto,
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 3, color: Color.fromARGB(255, 214, 215, 218)),
      ),
      fillColor: Color.fromARGB(255, 214, 215, 218),
      filled: true,
    ),
  );
}
