import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pick_a_bin/list_done.dart';


class Jadwal extends StatelessWidget {
  const Jadwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Jadwal Hari Ini',
            style: TextStyle(color: Color(0xff00783E)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ListDonePage()));
          },
          child: const Text('List Done'),
        ),
      ),
    );
  }
}