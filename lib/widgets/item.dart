import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/controllers/controller.dart';
import 'package:todo/repositories/repository.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final controller = Controller(RepositoryDio());
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            TextButton(onPressed: null, child: Icon(Icons.check_box)),
            Text('Titulo'),
          ],
        ),
        Row(
          children: const [
            SizedBox(
              height: 10,
              width: 60,
            ),
            Text('Subtitulo'),
          ],
        )
      ]),
    );
  }
}
