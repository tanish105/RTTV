import 'package:flutter/material.dart';
import 'package:rttv/poster_images.dart';
import 'package:rttv/video_details.dart';
import 'package:rttv/videoscreen.dart';

class RegionWise extends StatefulWidget {
  RegionWise(this.title, {super.key});

  String title;

  @override
  State<RegionWise> createState() => _RegionWiseState(title);
}

class _RegionWiseState extends State<RegionWise> {
  _RegionWiseState(this.title);
  String title;

  late ScrollController _scrollController;
  double _scrolloffset = 0.0;
  void initState() {
    // TODO: implement initState
    _scrollController = (ScrollController()..addListener(() {
      setState(() {
        _scrolloffset = _scrollController.offset;
      });
    })) ;
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    double height_screen = MediaQuery.of(context).size.height;
    List<details> cont2 = reg_wise[title]!;
    List<String> poster = pos[title]!;
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      appBar: AppBar(title: Text(title, style: TextStyle(fontSize: 28),),backgroundColor: Color(0xff0D131F),),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: width_screen*0.05,),
                Container(width: width_screen*0.4,
                  height: height_screen*0.25,
                  child: GestureDetector(
                    onTap: (){
                      details cont = cont2.elementAt(0);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(cont.videoID, cont.title, cont.description)));
                    },
                    child: FittedBox(fit: BoxFit.fill,child: Image.asset(poster.elementAt(0)),),
                  ),),
                SizedBox(width: width_screen*0.1,),
                Container(width: width_screen*0.4,
                  height: height_screen*0.25,
                  child: GestureDetector(
                    onTap: (){
                      details cont = cont2.elementAt(1);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(cont.videoID, cont.title, cont.description)));
                    },
                    child: FittedBox(fit: BoxFit.fill,child: Image.asset(poster.elementAt(1)),),
                  ),),
                SizedBox(width: width_screen*0.05,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: width_screen*0.05,),
                Container(width: width_screen*0.4,
                  height: height_screen*0.25,
                  child: GestureDetector(
                    onTap: (){
                      details cont = cont2.elementAt(2);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(cont.videoID, cont.title, cont.description)));
                    },
                    child: FittedBox(fit: BoxFit.fill,child: Image.asset(poster.elementAt(2)),),
                  ),),
                SizedBox(width: width_screen*0.1,),
                Container(width: width_screen*0.4,
                  height: height_screen*0.25,
                  child: GestureDetector(
                    onTap: (){
                      details cont = cont2.elementAt(3);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(cont.videoID, cont.title, cont.description)));
                    },
                    child: FittedBox(fit: BoxFit.fill,child: Image.asset(poster.elementAt(3)),),
                  ),),
                SizedBox(width: width_screen*0.05,),
              ],
            ),
            SizedBox(height: 20,),
            Container(width: width_screen*0.4,
              height: height_screen*0.25,
              child: GestureDetector(
                onTap: (){
                  details cont = cont2.elementAt(4);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(cont.videoID, cont.title, cont.description)));
                },
                child: FittedBox(fit: BoxFit.fill,child: Image.asset(poster.elementAt(4)),),
              ),),
          ],
        ),
      ),
    );
  }
}
