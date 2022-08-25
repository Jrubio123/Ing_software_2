
import 'package:este_si_debe_funcionar/tabs/explorar_tab.dart';
import 'package:este_si_debe_funcionar/tabs/favoritos_tab.dart';
import 'package:este_si_debe_funcionar/tabs/mi_orden_tab.dart';
import 'package:este_si_debe_funcionar/tabs/perfil_tab.dart';
import 'package:flutter/material.dart';


class TabsPage extends StatefulWidget{
  const TabsPage({Key? key}) : super(key: key);

  
  @override
  _TabsPageState createState()=> _TabsPageState();


}                     
//la tab es que cambie dinamicamente (segun los botones de abajo)
class _TabsPageState extends State<TabsPage>{
  List<Widget> _widgetOptions =[// las opciones que tenemos
    ExploreTab(),
    MiOrdenTab(),
    FavoritoTab(),
    PerfilTab()
  ];

  //el que tengamos seleccionado en el momento selecte item :D
  int _selectedItemIndex=0;

  //funcion para cambiar de tab :D
  void _cambiarWidget(int index){
    setState(() {
      _selectedItemIndex= index;
    });
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),//para que me cambie el body dependiendo del tab
      bottomNavigationBar:_bottomNavigationBar(context),
    );
  }
  //barra botones
Widget _bottomNavigationBar(BuildContext context){//la barra de abajo
  return BottomNavigationBar(
    iconSize: 30.0,//tamaño
    selectedItemColor: Theme.of(context).colorScheme.secondary,
    unselectedItemColor: Colors.grey,
    currentIndex: _selectedItemIndex,//el que mostramos de primerazo
    //igualamos segun funcion 
    onTap: _cambiarWidget,
    showUnselectedLabels:true,//las que no estan seleccionadas se le ve el texto

    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explorar'
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'Mi orden'
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Favoritos'
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.person_pin),
        label: 'Perfil'
        )
    ]
  );
}
}


 