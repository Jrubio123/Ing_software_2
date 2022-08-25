import 'package:flutter/material.dart';

class PerfilTab extends StatefulWidget{
   PerfilTab({Key? key}) : super(key: key);
  

  @override 

  _PerfilTabState createState()=>_PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab>{
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text('Perfil'),
      ),
    );
  }
}