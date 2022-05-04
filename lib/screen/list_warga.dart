// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
// import 'package:flutter/material.dart';

// class ListWarga extends StatefulWidget {
//   const ListWarga({Key? key}) : super(key: key);

//   @override
//   _ListWargaState createState() => _ListWargaState();
// }

// class _ListWargaState extends State<ListWarga> {
//   @override
//   Widget build(BuildContext context) {
//     final ref = FirebaseDatabase.instance.ref().child('warga');
//     return FirebaseAnimatedList(
//       query: ref,
//       itemBuilder: (BuildContext context, DataSnapshot snapshot,
//           Animation<double> animation, int index) {
//             return Container(
//               child: ListView(
//                 children: [
//                   Text(
//                     'Coba',
//                     style : TextStyle(
//                       fontSize: 25
//                     ),
//                   )
//                 ],
//               ),
//             );
//           },
//     );
//   }
// }
