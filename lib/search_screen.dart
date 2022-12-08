import 'package:flutter/material.dart';
import 'package:rttv/textFieldInput.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  void initState() {
    // TODO: implement initState
    _scrollController = (ScrollController()..addListener(() {
      setState(() {
      });
    })) ;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,0,10,0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff0D131F),
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 3.0
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                ),
                // alignment: Alignment.centerLeft,
                // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: const TextStyle(fontSize: 20,color: Colors.white),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    icon:IconButton(onPressed: () => print("Search"),
                      style: ButtonStyle(),
                      icon:  const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                      alignment: Alignment.center,
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Color(0xff0D131F),
                    // alignLabelWithHint: true,
                  ),
                  onChanged: (value) {
                     print(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
