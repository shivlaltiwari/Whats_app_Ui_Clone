import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/CallsPage.dart';
import 'package:whatsapp_ui/pages/CameraPages.dart';
import 'package:whatsapp_ui/pages/ChatsPage.dart';
import 'package:whatsapp_ui/pages/StatusPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whats App"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),

          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert_rounded),
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatsScreen(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){} ,
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.chat_rounded),
        ),
      
    );
  }
}