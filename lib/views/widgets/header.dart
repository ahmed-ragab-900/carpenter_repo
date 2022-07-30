import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({required this.hieght, Key? key}) : super(key: key);
  final double hieght;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: hieght,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(
            width: 25,
          ),
          const Text(
            "SIXINSH",
            style: TextStyle(color: Colors.black),
          ),
          const Spacer(),

          // phone number container
          Container(
            color: const Color.fromARGB(255, 2, 87, 178),
            width: 200,
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("01025974342"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.phone_android,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("0483822680"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
