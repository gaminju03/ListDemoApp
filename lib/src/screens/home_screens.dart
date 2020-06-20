import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listdemoapp/src/view/custom_items.dart';

class HomeScreen extends StatelessWidget {
 // const HomeScreen({Key key}) : super(key: key);

  final listPersonas = ['Juan','Luis','Ana','Moi','Jose',];

  @override
  Widget build(BuildContext context) {
    return Material(
          child: CupertinoPageScaffold(
         /* navigationBar: CupertinoNavigationBar(
            middle: Text('Cupertino App Bar'),
          ),*/
          child: CustomScrollView(
             slivers: <Widget>[
               CupertinoSliverNavigationBar(
                 largeTitle: Text('List Demo App'),
               ),
               SliverList(
                 delegate: SliverChildListDelegate(<Widget>[
                  
                  Container(
                                      child: ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text('Elemento 1'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                  ),
                  Card(
                                      child: ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text('Elemento 2'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                  ),
                  Card(
                                      child: ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text('Elemento 3'),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    ),
                  )
                 ]

                 ),
                 ),


            SliverList(
              delegate: SliverChildBuilderDelegate(//regresa un widged con la lista de elementos que contenga
                (context,index){
                  return CustonItenList(
                    titulo: listPersonas[index]
                   //  titulo: Text(listPersonas[index]),
                  );
                  /* ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text(listPersonas[index]),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    );*/
                },
                childCount: listPersonas.length,
              ),
            ),

                /* SliverFillRemaining(
                   child: Center(child: Text('Hola mundo')),)*/
             ],
          ),
        ),
    );
  }
}