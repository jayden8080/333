import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with  SingleTickerProviderStateMixin{


  late  TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(
        () => setState(() {
          _selectedIndex = _tabController.index;
        })
    );

  }
  @override
  void disponse(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("바텀 네비게이션 페이지"),
      ),
      body: _selectedIndex == 0 ?
           tabContainer(context, Colors.indigo, "Friends Tab")
          :_selectedIndex == 1 ? tabContainer(context, Colors.yellow, "Chats tab")
          :tabContainer(context, Colors.blue, "Settings tab")
       , bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(Icons.person),
              text: "Friends",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Chats",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Settings", 
            )
          ],
        ),
    ),
    );
  }

  Widget tabContainer(BuildContext con, Color tabColor, String tabText){
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(
            color:  Colors.white
          ),
        ),
      )
    );
  }
}
