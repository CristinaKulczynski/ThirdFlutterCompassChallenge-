import 'package:flutter/material.dart';
import 'package:immune/components/efeito_app_bar.dart';
import 'package:immune/components/text_form.dart';
import 'package:immune/screens/menu_lateral.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menuLateral(),
      appBar: efeitoAppBar('Immune'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              /* Utilizando responsividade */
              height: MediaQuery.of(context).size.height * .4,
              width: double.infinity,
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Image.asset(
                      'assets/images/grafico_meramente_ilustrativo.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
              child: buildTextFormField('Insira a Data'),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: buildTextFormField('Insira os valores IgE'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(32, 37, 141, 1),
                ),
                fixedSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width * .6, 56),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'Inserir',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
