// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

//ui
import 'dart:ui';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget{
  const WelcomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(           
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://images.unsplash.com/photo-1606787366850-de6330128bfc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Zm9uZG8lMjBkZSUyMHBhbnRhbGxhJTIwZGUlMjBjb21pZGF8ZW58MHx8MHx8&w=1000&q=80'),
              )
            ),
            child:BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0,sigmaY: 1.0),//imagen con difuminacion
              child:Container(
                color: Colors.black.withOpacity(0.3),
              ) ,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),//titulo grandecito y organizamos a la derecha vertical lo bajamos un poco
                child: const Text('Ultimo intento si no cancelo', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0
                )),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),//titulo grandecito y organizamos a la derecha
                child: const Text('esperando no sacar mala nota con esta cosa', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0
                )),
              ),
              //botones a ver que tal
              SizedBox(
                width: 350.0,
                height: 45.0,               
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  } ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)//redondeamos boton,
                  ), 
                  color: Theme.of(context).accentColor,
                  child: const Text('Log in',style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  )),
                ),
              ),
              Container(//boton de facebook
                width: 350.0,
                height: 45.0,  
                margin: const EdgeInsets.only(top: 20.0),             
                child: RaisedButton(
                  onPressed: () {
                    
                  } ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)//redondeamos boton,
                  ), 
                  color: Theme.of(context).buttonColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/facebook.png'),
                        width: 20.0,
                        height: 20.0,
                        ),
                      Container(
                        margin:const EdgeInsets.only(left: 10.0) ,
                        child: const Text('Conectar conf acebook',style: TextStyle(
                          color: Colors.white,
                           fontSize: 15.0
                        )),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}