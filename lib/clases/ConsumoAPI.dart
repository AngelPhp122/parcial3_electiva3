import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial3_electiva3/archivoJSON/DatosJSON.dart';
import 'package:parcial3_electiva3/clases/Vista1.dart';
import 'package:parcial3_electiva3/main.dart';




class consumoAPISW extends StatefulWidget {
  final dynamic valores;
  const consumoAPISW({Key? key, this.valores}) : super(key: key);

  @override
  State<consumoAPISW> createState() => _consumoAPISWState();
}

class _consumoAPISWState extends State<consumoAPISW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey, appBar: AppBar(backgroundColor: Colors.transparent, leading: IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),  actions: <Widget>[IconButton(onPressed: null, icon: Icon(Icons.shopping_bag))]),
    body: bodyPaginaAPI(),
    );
  }

  Widget bodyPaginaAPI(){

    return Container();
     

  }

}