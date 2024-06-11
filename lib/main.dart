import 'package:flutter/material.dart';

void main (){
  runApp(
    const MaterialApp(
      title: 'Hola mundo app',
      home: SafeArea(
        child: MyHelloWorldApp()
      )

    )
  );

}
class MyHelloWorldApp extends StatelessWidget {
  const MyHelloWorldApp({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return  Material(
      child: Column(
        children: [
          Container(
            height:50,
            padding:const EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: null,
                  tooltip: 'Boton de navegacion',
                ),
                Expanded(
                  child:Text('App Hola mundo')
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search),
                  tooltip: 'Boton de busqueda',
                )
              ],

            ),
          ),
          const Expanded(
          child: Center(
            child: Text('Hola mundo',
            textDirection: TextDirection.ltr,),
          ),
          ),
        ],
      ),
    );
  }
}