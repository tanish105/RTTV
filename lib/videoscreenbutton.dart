import 'package:flutter/material.dart';

class VideoScreenButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData ic;
  final String name;

  const VideoScreenButton(this.ic, this.name, this.onPress, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(0),
      iconSize: 20,
      onPressed: onPress,
      icon: Column(
        children: [
          Expanded(
            child: Icon(ic,color: Colors.white,),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Text(name, style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
