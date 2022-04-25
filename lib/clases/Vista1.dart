import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parcial3_electiva3/clases/ConsumoAPI.dart';
import 'package:parcial3_electiva3/main.dart';
import 'package:parcial3_electiva3/archivoJSON/DatosJSON.dart';

class Vista1 extends StatefulWidget {
  Vista1({Key? key}) : super(key: key);

  @override
  State<Vista1> createState() => _Vista1State();
}

class _Vista1State extends State<Vista1> {
  int activoMenu1 = 0;
 int activoMenu2 = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.transparent,
      leading: IconButton(onPressed: null, icon: Icon(Icons.menu),),
      title: Text('Parcial 3 electiva'), 
      ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(child: Text("Consumir API"), onPressed: (){
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: consumoAPISW()
          ));
        }
        ,)
      ],
      )
      ),
  );
  
  }

/*Widget bodyParcial3(){



return Center(child: ButtonBar(
 
),);


} */

Widget retornoData(){

return Container(
  child: GestureDetector(
  onTap: () {
    Navigator.push(context, PageTransition(alignment: Alignment.bottomCenter,child: consumoAPISW(valores: 1,), type: PageTransitionType.scale),);
  },
 ), 
 );

}
}