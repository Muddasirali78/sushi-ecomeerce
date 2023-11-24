import 'package:abc/button.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              "SUSHI MAN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
            ),
            Image.asset("assets/sushi.png"),
            SizedBox(
              height: 25,
            ),
            Text("THE TASTE OF KARACHI FOOD ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 10,
            ),
           // Text(
            //  "feel the taste of the most popular karachi food from anywhere and any time",
             // style: TextStyle(
             //   color: Colors.grey[200],
             //   height: 2,
             // ),
           // ),
            SizedBox(height: 25),
            mybutton(
              text: "get started",
              onTap: () {
                Navigator.pushNamed(context, '/menu_page');
              },
            ),
          ],
        ),
      ),
    );
  }
}
