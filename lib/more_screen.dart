import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'stba.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D131F),
      appBar: AppBar(title: Text("Account Settings",style: TextStyle(fontSize: 28),),backgroundColor: Color(0xff0D131F),),
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [

            STBA(Icons.event_seat, "Subscribe",(){
              print("Subscribe");
            }),
            STBA(Icons.notifications, "Notification Inbox",(){
              print("Notification Inbox");
            }),
            STBA(Icons.settings, "Settings",(){
              print("Settings");
            }),
            STBA(Icons.list, "Terms of Use",(){
              print("Terms of Use");
            }),
            STBA(Icons.policy, "Privacy Policy",(){
              print("Privacy Policy");
            }),
            STBA(Icons.help, "Help & FAQ's",(){
              print("Help & FAQ's");
            }),
            STBA(Icons.whatsapp, "Chat With Us",(){
              print("Chat With Us");
            }),
            STBA(Icons.email, "Contact Us",(){
              print("Contact Us");
            }),
            STBA(Icons.local_offer_outlined, "Offers",(){
              print("Offers");
            }),
            STBA(Icons.logout_outlined, "Log Out",() async{await FirebaseAuth.instance.signOut();}),
          ],
        ),
      ),
    );
  }
}
