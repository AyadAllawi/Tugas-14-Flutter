import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Tiket {
  final String nama;
  final String email;
  final String judulFilm;
  final String jumlahTiket;
  Tiket({
    required this.nama,
    required this.email,
    required this.judulFilm,
    required this.jumlahTiket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'email': email,
      'judulFilm': judulFilm,
      'jumlahTiket': jumlahTiket,
    };
  }

  factory Tiket.fromMap(Map<String, dynamic> map) {
    return Tiket(
      nama: map['nama'] as String,
      email: map['email'] as String,
      judulFilm: map['judulFilm'] as String,
      jumlahTiket: map['jumlahTiket'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Tiket.fromJson(String source) =>
      Tiket.fromMap(json.decode(source) as Map<String, dynamic>);
}
