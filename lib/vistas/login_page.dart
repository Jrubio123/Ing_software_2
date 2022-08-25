import 'package:este_si_debe_funcionar/assets/colores/colores.dart';
import 'package:este_si_debe_funcionar/assets/widgets/back_button.dart';
import 'package:flutter/material.dart';

//ui
import 'dart:ui';
import 'package:flutter/services.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);

  




  @override
  Widget build(BuildContext context){

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const Image(
                width: double.infinity,
                height: 180.0,
                fit: BoxFit.cover,
                image: NetworkImage('https://p4.wallpaperbetter.com/wallpaper/148/958/383/still-life-food-bread-meat-vegetables-hd-wallpaper-preview.jpg')
              ),
              Container(
                margin: const EdgeInsets.only(top:30.0),//altura back buttom
                child: backButton(context, Colors.white)
              )

            ],
          ),
          //tarjeta de abajo
          Transform.translate(
            offset: const Offset(0.0,-10.0),
            child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Bienvenido de vuelta",style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                      )),
                      Text("Ingresa tu cuenta",style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0
                      )),
                      //siguen los imputs los cuales se haran mas abajo porque aja
                      _emailInput(),
                      _passwordInput(),
                      _buttonLogin(context),
                      Container(
                        //para empujar del de arriba
                        margin: const EdgeInsets.only(top:30.0 ),
                        child: const Text('Olvidaste tu contraseña?',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0
                        )),
                      ),

                      Container(
                        //para empujar del de arriba
                        margin: const EdgeInsets.only(top:30.0 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("No tienes cuenta?",style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0
                            )),
                            Text(' Crea una',style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}


//widgets 

Widget _emailInput(){
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142,142,147,1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Correo Electronico',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _passwordInput(){
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142,142,147,1.2),
      borderRadius: BorderRadius.circular(30.0)
    ),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contraseña',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        )
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context){
  return Container(
                width: 350.0,
                height: 45.0,  
                margin: const EdgeInsets.only(top: 30.0),             
                child: RaisedButton(
                  onPressed: () {
                     Navigator.pushNamed(context, 'tabs');
                  } ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)//redondeamos boton,
                  ), 
                  color: Theme.of(context).accentColor,
                  child: const Text('Entrar',style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0
                  )),
                ),
  );
}