void main() {
  int uts = 85;
  int uas = 90;
  double kehadiran = 79.0;

  //menghitung nilai
  double average = (uts + uas) / 2;

  //menampilkan data nilai
  void tampilData() {
    print("Data Nilai:");
    print("Nilai UTS: $uts");
    print("Nilai UAS: $uas");
    print("Rata-Rata Nilai UTS dan UAS: $average");
    print("Kehadiran: $kehadiran%");
  }

  // menampilkan kelulusan
  void kelulusan() {
    if (average >= 87.5 && kehadiran >= 79 && uts >= 85 && uas >= 90) {
      print("Selamat, anda Lulus!✅");
    } else {
      print("Maaf, Anda Tidak Lulus!❌");
    }
  }

  tampilData();
  kelulusan();
}
