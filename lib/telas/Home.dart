import 'package:aprenda_ingles/telas/Letras.dart';
import 'package:flutter/material.dart';

import 'Bichos.dart';
import 'Numeros.dart';
import 'Letras.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          //labelColor: Colors.white,
          //unselectedLabelColor: Colors.white,
          controller: _tabController,
          tabs: <Widget> [
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Letras"),
          ],)
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bichos(),
          Numeros(),
          Letras()
        ],
      ),
    );
  }
}

