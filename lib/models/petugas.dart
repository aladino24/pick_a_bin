import 'package:firebase_database/firebase_database.dart';

class Petugas {
  final String alamat;
  final String email;
  final String username;
  final String telp;
  final String nama;

  Petugas({
    required this.alamat, 
    required this.email, 
    required this.username, 
    required this.telp, 
    required this.nama
  });

  Petugas.fromSnapshot(DataSnapshot snapshot) :
    alamat = snapshot.child('alamat').value.toString(),
    email = snapshot.child('email').value.toString(),
    username = snapshot.child('username').value.toString(),
    telp = snapshot.child('telp').value.toString(),
    nama = snapshot.child('nama').value.toString();

  toJson() {
    return {
      'alamat': alamat,
      'email': email,
      'username': username,
      'telp': telp,
      'nama': nama
    };
  }
}