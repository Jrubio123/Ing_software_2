import 'package:flutter/material.dart';

class MiOrdenTab extends StatefulWidget{
   MiOrdenTab({Key? key}) : super(key: key);
  

  @override 

  _MiOrdenTabState createState()=>_MiOrdenTabState();
}

class _MiOrdenTabState extends State<MiOrdenTab>{
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text('mi orden'),
      )
    );
  }
}