import 'package:flutter/material.dart';
import 'package:immune/components/card_menu_lateral.dart';
import 'package:immune/pesquisa/pesquisa.dart';
import 'package:immune/screens/alimentos/alimentos.dart';
import 'package:immune/screens/dicas/dicas.dart';
import 'package:immune/screens/sobre/sobre.dart';
import 'package:immune/screens/videos/videos.dart';

Drawer menuLateral() {
  return Drawer(
    child: Builder(
      builder: (context) => Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 80,
            child: Text(
              'Seja bem vindo!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          cardMenuLateral(
              const Icon(Icons.assistant), 'dicas', context, Dicas()),
          cardMenuLateral(
              const Icon(Icons.video_library), 'videos', context, Videos()),
          cardMenuLateral(
              const Icon(Icons.search), 'pesquisa', context, Pesquisa()),
          cardMenuLateral(const Icon(Icons.food_bank_outlined), 'alimentos',
              context, Alimentos()),
          cardMenuLateral(
              const Icon(Icons.info_outline), 'sobre', context, Sobre()),
        ],
      ),
    ),
  );
}
