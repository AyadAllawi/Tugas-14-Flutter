import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Tiket {
  final int? id;
  final String nama;
  final String email;
  final String phone;
  final String password;
  final String judulFilm;
  final String jumlahTiket;
  Tiket({
    this.id,
    required this.nama,
    required this.email,
    required this.phone,
    required this.password,
    required this.judulFilm,
    required this.jumlahTiket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'email': email,
      'phone': phone,
      "password": password,
      "judulFilm": judulFilm,
      "jumlahTiket": jumlahTiket,
    };
  }

  factory Tiket.fromMap(Map<String, dynamic> map) {
    return Tiket(
      id: map['id'] as int,
      nama: map['nama'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      password: map["password"] as String,
      judulFilm: map["judulFilm"] as String,
      jumlahTiket: map["jumlahTiket"] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tiket.fromJson(String source) =>
      Tiket.fromMap(json.decode(source) as Map<String, dynamic>);
}
