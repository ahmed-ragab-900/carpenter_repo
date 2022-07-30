import 'package:flutter/material.dart';

class Fotter extends StatelessWidget {
  const Fotter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 28, 28, 28),
      height: MediaQuery.of(context).size.height / 3,
    );
  }
}
