void main() {
  // Tipe Data String (teks)
  String Nama = "Ayad Allawi";
  String Alamat = "Jalan Mawar Dalam III";
  String Profesi = "Apa aja boleh";

  //Tipe Data Int (angka)
  int Umur = 20;

  //tipe data double
  double tinggiBadan = 172.5;

  //tipe data bool
  bool siswa = true;

  //tipe data list
  List<String> mobilFavorit = ["Nissan GTR, lamborgini, Innova Reborn"];

  Map<String, dynamic> biodata = {
    "Nama": Nama,
    "Umur": Umur,
    "Alamat": Alamat,
    "Profesi": Profesi,
    "Tinggi": tinggiBadan,
    "Status": siswa,
    "Mobil": mobilFavorit,
  };

  //Memanggil Fungsi Data
  void tampilkanBiodata() {
    print("Nama: ${biodata["Nama"]}");
    print("Umur: ${biodata["Umur"]} Tahun");
    print("Alamat: ${biodata["Alamat"]}");
    print("Profesi: ${biodata["Profesi"]}");
    print("Tinggi Badan: ${biodata["Tinggi"]} cm");
    print("Status Siswa: ${biodata["Status"]}");
    print("Mobil Favorit: ${biodata["Mobil"]}");
  }

  // memanggil fungsi biodata
  tampilkanBiodata();

  //cara menampilkan list (dari sahrul)
  // print("Daftar Mobil Favorit: ");
  // for (var m in mobilFavorit) {
  //   print("- $m");
  // }
}
