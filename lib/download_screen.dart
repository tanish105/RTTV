import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'stba.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  late ScrollController _scrollController;
  double _scrolloffset = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    _scrollController = (ScrollController()
      ..addListener(() {
        setState(() {
          _scrolloffset = _scrollController.offset;
        });
      }));
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
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      appBar: AppBar(
        title: Text(
          "My Downloads",
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Color(0xff0D131F),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: Row(
                    children: [
                      Expanded(flex:1,child: Image.asset("assets/image/trance.png")),
                      Expanded(flex:3,child: Text("Trance",style: TextStyle(color: Colors.white),),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
