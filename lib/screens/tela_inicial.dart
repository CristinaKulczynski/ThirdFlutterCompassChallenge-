import 'package:flutter/material.dart';
import 'package:immune/components/efeito_app_bar.dart';
import 'package:immune/components/menu_lateral.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menuLateral(),
      appBar: efeitoAppBar(),
      body: Column(
        children: [
          SizedBox(
            /* Utilizando responsividade */
            height: MediaQuery.of(context).size.height * .4,
            width: double.infinity,
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
