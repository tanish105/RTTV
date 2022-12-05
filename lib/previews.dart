import 'package:flutter/material.dart';
import 'package:rttv/video_details.dart';
import 'package:rttv/videoscreen.dart';
import 'models.dart';

class Previews extends StatelessWidget {
  const Previews({Key? key, required this.title, required this.contentList})
      : super(key: key);

  final String title;
  final List<Content> contentList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 165.0,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              scrollDirection: Axis.horizontal,
              itemCount: contentList.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentList[index];
                return GestureDetector(
                  onTap: () {
                    details cont = det[content.name]!;
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(cont.videoID, cont.title, cont.description)));
                  },
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(content.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
