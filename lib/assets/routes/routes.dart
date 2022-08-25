import 'package:flutter/cupertino.dart';

//Paginas
import 'package:este_si_debe_funcionar/vistas/welcome_page.dart';
import 'package:este_si_debe_funcionar/vistas/login_page.dart';
import 'package:este_si_debe_funcionar/tabs/tabs_page.dart';

final routes= <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'tabs': (BuildContext context) => TabsPage()
};