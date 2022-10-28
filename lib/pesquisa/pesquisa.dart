import 'package:flutter/material.dart';
import 'package:youtube_api/youtube_api.dart';
import 'package:immune/components/efeito_app_bar.dart';
import 'package:immune/models/api_key.dart';
import 'package:immune/components/card_videos.dart';

class Pesquisa extends StatefulWidget {
  @override
  _PesquisaState createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  static String key = apiKey;

  TextEditingController _controllerNome = TextEditingController();
  ValueNotifier<int> count = ValueNotifier<int>(0);

  YoutubeAPI youtube = YoutubeAPI(key);
  List<YouTubeVideo> listresultado = [];

  Future<void> callAPI(String pesquisa) async {
    listresultado = await youtube.search(
      pesquisa,
      order: 'relevance',
      videoDuration: 'any',
    );
    listresultado = await youtube.nextPage();
    setState(() {
      count.value = 10;
    });
  }

  @override
  void initState() {
    super.initState();
    callAPI('Gatinhos Fofos');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 176, 228),
      appBar: efeitoAppBar('Pesquisa'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                onChanged: (value) {},
                onFieldSubmitted: (value) {
                  callAPI(_controllerNome.text);
                  print('teste');
                },
                controller: _controllerNome,
                decoration: const InputDecoration(
                  prefixIcon: Padding(
                      padding: EdgeInsetsDirectional.only(start: 12.0),
                      child: Icon(Icons.search)),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(194, 189, 189, 0.7),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .85,
              child: ValueListenableBuilder(
                  valueListenable: count,
                  builder: (context, value, child) => count.value > 0
                      ? ListView(
                          physics: BouncingScrollPhysics(),
                          children:
                              listresultado.map<Widget>(listItem).toList(),
                        )
                      : Center(
                          child: Column(
                            children: [
                              CircularProgressIndicator(),
                              Text(
                                'Loading...',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem(YouTubeVideo video) {
    return CardVideos(video: video);
  }
}
