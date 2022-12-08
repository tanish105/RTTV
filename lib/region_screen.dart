import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rttv/region_list.dart';
import 'package:rttv/region_wise_screen.dart';

class Region extends StatefulWidget {
  const Region({Key? key}) : super(key: key);

  @override
  State<Region> createState() => _RegionState();
}

String curr_region = 'Malayalam';

List<Widget> getList() {
  List<Center> list = [];

  for (int i = 0; i < regions.length; i++) {
    list.add(Center(
      child: Text(regions[i]),
    ));
  }

  return list;
}

class _RegionState extends State<Region> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      appBar: AppBar(title: Text("Select Your Region!", style: TextStyle(fontSize: 28),),backgroundColor: Color(0xff0D131F),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 150,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 1.0),

                decoration: BoxDecoration(
                    color: Color(0xff09AA0B0),
                  borderRadius: BorderRadius.circular(60)
                ),
                child: CupertinoTheme(
                  data: CupertinoThemeData(brightness: Brightness.light),
                  child: CupertinoPicker(
                    magnification: 1.5,
                    squeeze: 1.0,
                    itemExtent: regions.length.toDouble(),
                    onSelectedItemChanged: (int i) {
                      setState((){
                        selected =i;
                      });
                      // curr_region = regions[ind];
                    },
                    children: <Widget>[
                      Text("Malayalam",style: TextStyle(color: selected == 0 ? Colors.black: Colors.black),),
                      Text("Marathi",style: TextStyle(color: selected == 0 ? Colors.black: Colors.black),),
                      Text("Tamil",style: TextStyle(color: selected == 0 ? Colors.black: Colors.black),),
                      Text("Telugu",style: TextStyle(color: selected == 0 ? Colors.black: Colors.black),),
                    ],
                  ),
                )),
            SizedBox(height: 20,),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegionWise(regions[selected])));
              },
              elevation: 2.0,
              fillColor: Colors.deepOrange,
              child: Icon(
                Icons.arrow_forward,
                size: 35.0,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            )
          ],
        ),
      ),
    );
  }
}
