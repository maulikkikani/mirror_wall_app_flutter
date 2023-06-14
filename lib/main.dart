import 'package:flutter/material.dart';
import 'package:goverment_service_app/views/screens/homepage.dart';
import 'package:goverment_service_app/views/screens/spaplchscreen.dart';
import 'package:goverment_service_app/views/screens/web_browser_page.dart';
import 'package:provider/provider.dart';
import 'Controllers/linervalue_provider.dart';
import 'Controllers/popupmenultemselect.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LinerValue_Provider()),
        ChangeNotifierProvider(create: (context)=> PopupMenuItemSelect_Provider()),
      ],
      builder: (context,_) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => SpalchScreen(),
          "HomePage": (context) => HomePage(),
          "WebBrowserPage": (context) => WebBrowserPage(),
        },
      ),
    ),
  );
}
