// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tfk_dating/Fucntions/functions.dart';

class SecondPage extends StatelessWidget {
  Functions bg = Functions();

  SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (bg.darkLight == false) ? Colors.white : Colors.grey,
      appBar: CustomAppBar(bg: bg),
      drawer: Drawer(backgroundColor: Colors.white),
      body: SecondPageBody(),
    );
  }
}

class SecondPageBody extends StatefulWidget {
  const SecondPageBody({super.key});

  @override
  State<SecondPageBody> createState() => _SecondPageBodyState();
}

class _SecondPageBodyState extends State<SecondPageBody> {
  Functions fu = Functions();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: 800,
      child: Column(children: [
        Spacer(),
        Text(
          'Navn: ${fu.imgList[i]}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/${fu.imgList[i]}',
                fit: BoxFit.fill,
                scale: 0.5,
              ),
            )),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              width: 100,
              child: IconButton(
                splashRadius: 0.001,
                onPressed: () {
                  setState(() {
                    fu.imgList.remove(fu.imgList[i]);
                    if (fu.imgList.isEmpty) {
                      Navigator.pushNamed(context, '/EndPage');
                    }
                  });
                },
                icon: Icon(
                  Icons.close,
                  weight: 100,
                ),
              ),
            ),
            SizedBox(width: 100),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              width: 100,
              child: IconButton(
                splashRadius: 0.001,
                onPressed: () {
                  setState(() {
                    fu.imgList.remove(fu.imgList[i]);
                    if (fu.imgList.isEmpty) {
                      Navigator.pushNamed(context, '/EndPage');
                    }
                  });
                },
                icon: Icon(Icons.check),
              ),
            ),
          ],
        ),
        Spacer(),
      ]),
    ));
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Functions bg;

  const CustomAppBar({Key? key, required this.bg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.red,
      title: Text(
        'Welcome',
        style: TextStyle(fontSize: 30, color: Colors.yellow),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            // Toggle dark/light mode
            bg.darkLight = !bg.darkLight;
          },
          icon: Icon(Icons.sunny),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
