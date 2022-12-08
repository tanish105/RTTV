import 'package:flutter/material.dart';
import 'package:rttv/videoscreenbutton.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen(this._videoId,this._title,this._description, {super.key});
  final String _videoId;
  final String _title;
  final String _description;

  @override
  State<VideoScreen> createState() => _VideoScreenState(_videoId,_title,_description);
}



class _VideoScreenState extends State<VideoScreen> {
  final String videoId;
  final String title;
  final String description;
  _VideoScreenState(this.videoId,this.title,this.description);

  late final YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: YoutubePlayer(
                controller: _controller,
                width: double.infinity,
                progressColors: ProgressBarColors(
                    backgroundColor: Colors.red, playedColor: Colors.white),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 20,),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Row(
                  children: [
                    Container(
                        child: Expanded(
                            child: VideoScreenButton(Icons.add, "Add", () {print("Add");}))),
                    Expanded(
                      child:
                          VideoScreenButton(Icons.download, "Download", () {print("Download");}),
                    ),
                    Expanded(
                      child: VideoScreenButton(Icons.share, "Share", () {print("Share");}),
                    ),
                    Expanded(
                      child: VideoScreenButton(
                          Icons.report_problem_outlined, "Report", () {print("Report");}),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 60,),
            ),
            SliverToBoxAdapter(
                child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            )),
            SliverToBoxAdapter(
              child: SizedBox(height: 40,),
            ),
              SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 15,),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
