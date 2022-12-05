import 'package:flutter/material.dart';

class STBA extends StatelessWidget {
  STBA(this.icon, this.text,this.function,{super.key});

  IconData icon;
  String text;
  VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Icon(
                icon,
                size: 33,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                  onTap: function,
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 25,color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
