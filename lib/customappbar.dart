import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  const CustomAppBar({Key? key, this.scrollOffset=0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      color: Colors.black.withOpacity((scrollOffset/350).clamp(0, 1).toDouble()),
      child: SafeArea(
        child: Row(
          children: [
            Image(image: AssetImage('assets/rttv_logo.png')),
            SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _appbarbutton( onTap: () => print('TV Shows'), title: 'TV SHOWS',),
                  _appbarbutton( onTap: () => print('movies'), title: 'MOVIES',),
                  _appbarbutton( onTap: () => print('region'), title: 'REGION',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _appbarbutton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _appbarbutton({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap (),
      child: Text(title,
      style: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold),
    ),
    );
  }
}
