import 'package:flutter/material.dart';

class FavoritoTab extends StatefulWidget{
   FavoritoTab({Key? key}) : super(key: key);
  

  @override 

  _FavoritoTabState createState()=>_FavoritoTabState();
}

class _FavoritoTabState extends State<FavoritoTab>{
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text('favorito'),
      )
    );
  }
}