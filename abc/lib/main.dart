import 'package:abc/home/home_view.dart';
import 'package:abc/menu_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home(),
      routes:{ '/home':(context) => const home(),
      '/menu_page':(context) => const menu_page(),
      
      },
    );
  }
}
