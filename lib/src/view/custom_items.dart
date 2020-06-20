import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustonItenList extends StatelessWidget {
  const CustonItenList({
    Key key,
    this.titulo
    }) :super(key: key);
final String titulo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text(titulo),
                      trailing: Icon(CupertinoIcons.right_chevron),
                    );
  }
}