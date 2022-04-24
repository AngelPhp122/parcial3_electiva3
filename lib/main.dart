import 'package:flutter/material.dart';
import 'package:parcial3_electiva3/clases/Vista1.dart';

void main() {
  runApp( parcial3Electiva3());
}

class parcial3Electiva3 extends StatelessWidget {
  const parcial3Electiva3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Vista1(),
    );
  }
}
