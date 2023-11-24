import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const mybutton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(212, 135, 81, 77),
            borderRadius: BorderRadius.circular(40),
          ),
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
