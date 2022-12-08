import 'package:flutter/material.dart';

import 'content_header.dart';
import 'customappbar.dart';
import 'data.dart';
import 'models.dart';
import 'widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  double _scrolloffset = 0.0;

  @override
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

  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      extendBodyBehindAppBar: true,
      floatingActionButton: const FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: null,
        hoverColor: Colors.blue,
        child: Icon(Icons.cast,color: Colors.red,),
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 50.0),
        child: CustomAppBar( _scrolloffset,),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers:[
          SliverToBoxAdapter(
            child: ContentHeader(featuredContent: Drishyam2Content),
          ),
          SliverPadding(padding: const EdgeInsets.only(top: 20.0),
          sliver: SliverToBoxAdapter(
            child: Previews(
              title: "Previews",
              contentList: previews,
            ),
          ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              title: 'My List',
              contentList: myList, ContentList: myList,
            ),
          ),
          SliverToBoxAdapter(
            child: ContentList(
              title: 'RRTV Originals',
              ContentList: originals,
              isOriginals: true, contentList: originals,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 20.0),
            sliver : SliverToBoxAdapter(
              child: ContentList(
                title: 'Trending',
                ContentList: trending, contentList: trending,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

