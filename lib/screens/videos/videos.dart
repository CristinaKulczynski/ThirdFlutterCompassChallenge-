import 'package:flutter/material.dart';
import 'package:immune/components/efeito_app_bar.dart';
import 'package:immune/models/api_key.dart';
import 'package:immune/components/card_videos.dart';
import 'package:youtube_api/youtube_api.dart';

class Videos extends StatefulWidget {
  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  static String key = apiKey;

  YoutubeAPI youtube = YoutubeAPI(key);
  List<YouTubeVideo> listresultado = [];

  Future<void> callAPI() async {
    String query = "Imunidade";
    listresultado = await youtube.search(
      query,
      order: 'relevance',
      videoDuration: 'any',
    );
    listresultado = await youtube.nextPage();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    callAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 176, 228),
      appBar: efeitoAppBar('Videos'),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: listresultado.map<Widget>(listItem).toList(),
      ),
    );
  }

  Widget listItem(YouTubeVideo video) {
    return CardVideos(video: video);
  }
}
