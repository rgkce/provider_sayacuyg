import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/sayac_model.dart';

class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sayacModel = context.watch<SayacModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Sayac Uygulaması'),
      ),
      body: Center(
        child: Text(
          'Sayac: ${sayacModel.sayac}',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: context.read<SayacModel>().sayacArttir,
        child: Icon(Icons.add),
      ),
    );
  }
}


//contex.watch ve contex.read farki:
//watch dediğimizde provider modelini dinlemeye devam ediyor ve kendisini yeniliyor.
//read ise artik provideri dinlemiyor ve değişikliklerden haberi olmuyor.