import 'dart:convert';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial3_electiva3/archivoJSON/DatosJSON.dart';
import 'package:parcial3_electiva3/clases/Vista1.dart';
import 'package:parcial3_electiva3/main.dart';
import 'package:parcial3_electiva3/clases/Datos.dart';
import 'package:http/http.dart' as http;






class consumoAPISW extends StatefulWidget {
  final dynamic valores;
  const consumoAPISW({Key? key, this.valores}) : super(key: key);

  @override
  State<consumoAPISW> createState() => _consumoAPISWState();
}

class _consumoAPISWState extends State<consumoAPISW> {

  late Future<List<Datos>> _listaApiStarWard;

  Future<List<Datos>> _getAPIStarWar() async{

      final responce = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
      String cuerpo;

      List<Datos> lista = [];

    if(responce.statusCode==200){
      print(responce.body);
      cuerpo = utf8.decode(responce.bodyBytes);

      final JsonData = jsonDecode(cuerpo);

      for (var item in JsonData){
          lista.add(Datos(item["id"], item["title"], item["url"], item["thumbnailUrl"] /*, item["skin_color"], item["eye_color"], item["birth_year"], item["gender"]*/));
      }

    } else {
      throw Exception("FALLA EN CONEXION ESTADO 500");
    }

    return lista;



  }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listaApiStarWard = _getAPIStarWar();
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: _listaApiStarWard, 
      builder: (context, snapshot){
        if(snapshot.hasData){
            return ListView(
                children: _listaApiStarWards(snapshot.data),
            );
        }
        else {
          print(snapshot.error);
          return Text("");
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "consumo de la api",
     home: Scaffold(
       appBar: AppBar(
         title: Text("API Star Wars"),
       ),
       body: futureBuilder,
     ),
    );
  }

  List<Widget> _listaApiStarWards(data){
    List<Widget>datos=[];

    for(var itempk in data){

        datos.add(
          Card(
            elevation: 2.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
               // Text(itempk.num),
                Container(
                  padding: EdgeInsets.all(2.0),
                  height: 500,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(itempk.url), scale: 0.05),
                  ),
                ),
                Text(itempk.title), 
              ],
            ),
          )
        );
        

    }return datos;
  }

}