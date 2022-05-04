// import 'package:flutter/material.dart';
// import '../models/petugas.dart';
// import '../service/databaseService.dart';

// class PetugasPage extends StatefulWidget {
//   const PetugasPage({ Key? key }) : super(key: key);

//   @override
//   _PetugasPageState createState() => _PetugasPageState();
// }

// class _PetugasPageState extends State<PetugasPage> {
//   List<Petugas> _petugas = [];

//   @override
//   void initState(){
//     super.initState();
//     _setupPetugas();
//   }

//   _setupPetugas() async {
//     List<Petugas>? petugas = await DatabaseService.getPetugas();
//     setState(() {
//       _petugas = petugas!;
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: RefreshIndicator(
//         onRefresh: () => _setupPetugas(),
//         child: ListView.builder(
//           itemCount: _petugas.length,
//           itemBuilder: (BuildContext context, int index) {
//             Petugas petugas = _petugas[index];
//             return PetugasView(
//               petugas : petugas,
//             );
//           }
//         )
//       )
//     );
//   }
// }


// class PetugasView extends StatelessWidget {
//   const PetugasView({ Key? key, required this.petugas }) : super(key: key);
//   final Petugas petugas;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             petugas.nama,
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Colors.green,
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Text(
//             'Alamat : ${petugas.alamat}',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.green,
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Text(
//             'No. Telp : ${petugas.telp}',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.green,
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Text(
//             'Email : ${petugas.email}',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.green,
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//         ]),
//     );
//   }  
// }