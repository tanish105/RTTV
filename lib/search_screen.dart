import 'package:flutter/material.dart';
import 'package:rttv/textFieldInput.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10,0,10,0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                // alignment: Alignment.centerLeft,
                // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  style: const TextStyle(fontSize: 20),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    icon:IconButton(onPressed: () => print("Search"),
                      icon:  const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                      alignment: Alignment.center,
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Search!!!',
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
