import 'package:faker/faker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class ListContactPage extends StatelessWidget {
  ListContactPage({Key? key}) : super(key: key);
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    final ref = FirebaseDatabase.instance.ref().child('warga');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'List Contact',
          style: TextStyle(color: Color(0xff00783E)),
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff00783E),
          ),
          label: const Text(
            'Back',
            style: TextStyle(color: Color(0xff00783E)),
          ),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ),
      ),
      body: FirebaseAnimatedList(
        query: ref,
        itemBuilder: (BuildContext context, DataSnapshot snapshot,
            Animation<double> animation, int index) {
          return Column(
        children: <Widget>[
          ListTile(
            title: Text(
              snapshot.child('nama').value.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(snapshot.child('alamat').value.toString()),
          ),
        ],
      );
    })
    );
  }
}

