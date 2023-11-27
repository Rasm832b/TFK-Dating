//import 'dart:html';
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tfk_dating/main.dart';
import 'package:tfk_dating/pages/loginPage.dart';
import 'package:tfk_dating/pages/secondPage.dart';

class Functions {
  List<String> imgList = ['Fja.jpg', 'Vil.jpg', 'Res.jpg'];
  bool darkLight = true;
  String inputUname = '';
  String inputPname = '';
  bool isLoggedIn = false;
  String userName = 'Livredder';
  String passWord = 'Livredder123';
  void signIn(String userName, String passWord, BuildContext context) {
    if (userName == 'Livredder' && passWord == 'Livredder123') {
      isLoggedIn = true;
    } else if (userName != 'Livredder' || passWord != 'Livredder123') {
      isLoggedIn = false;
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                  title: const Text('Fejl'),
                  content: const Text('Forkert brugernavn eller adgangskode'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    )
                  ]));
    }
  }
}

class Pictures {
  final Image image;

  Pictures({
    required this.image,
  });
}
