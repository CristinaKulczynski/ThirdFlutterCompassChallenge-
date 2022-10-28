import 'package:flutter/material.dart';
import 'package:immune/components/efeito_app_bar.dart';
import 'package:immune/screens/alimentos/alimentos_data.dart';

class Alimentos extends StatefulWidget {
  const Alimentos({super.key});

  @override
  State<Alimentos> createState() => _AlimentosState();
}

class _AlimentosState extends State<Alimentos> {
  List<AlimentosDados> listAlimentos = [
    AlimentosDados(
        imagem: 'assets/images/kiwi.jpg',
        nome: 'Kiwi',
        vitaminas: 'C',
        texto: 'Estimula a função nervosa e muscular'),
    AlimentosDados(
        imagem: 'assets/images/gengibre.jpg',
        nome: 'Gengibre',
        vitaminas: 'C',
        texto: 'Anti-Inflamatório e Antioxidante'),
    AlimentosDados(
        imagem: 'assets/images/morango.jpg',
        nome: 'Morango',
        vitaminas: 'B',
        texto: 'Ajuda a combater inflamações'),
    AlimentosDados(
        imagem: 'assets/images/iogurte.png',
        nome: 'Iogurte',
        vitaminas: 'B',
        texto: 'Alivia alergias'),
    AlimentosDados(
        imagem: "assets/images/couvezinha.png",
        nome: 'Couve',
        vitaminas: 'A',
        texto: 'Fortalece o Organismo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: efeitoAppBar('Alimentos'),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListWheelScrollView.useDelegate(
              itemExtent: 250,
              diameterRatio: 1.5,
              renderChildrenOutsideViewport: true,
              physics: BouncingScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: listAlimentos.length,
                  builder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                            right: 8, left: 8, bottom: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomLeft,
                                colors: <Color>[
                                  Color.fromRGBO(74, 148, 222, 1.0),
                                  Color.fromRGBO(32, 37, 141, 1),
                                ]),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 13, right: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(16),
                                    color:
                                        Color.fromRGBO(74, 148, 222, 1.0),
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height *
                                          .2,
                                  width:
                                      MediaQuery.of(context).size.width *
                                          .4,
                                  child: Image.asset(
                                    listAlimentos[index].imagem,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height *
                                        .2,
                                width: MediaQuery.of(context).size.width *
                                    .4,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10),
                                      child: Text(
                                        listAlimentos[index].nome,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      listAlimentos[index].texto,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
              clipBehavior: Clip.none),
        ));
  }
}
