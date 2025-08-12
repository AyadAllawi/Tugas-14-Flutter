import 'dart:io';

void main() {
  print("=== Program Penilaian Mahasiswa ===\n");

  stdout.write("Masukan Nama Siswa: ");
  String nama = (stdin.readLineSync()!);

  stdout.write("Masukkan Nilai UAS: ");
  int uas = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Nilai UTS: ");
  int uts = int.parse(stdin.readLineSync()!);

  stdout.write("Presentase kehadiran: ");
  double kehadiran = double.parse(stdin.readLineSync()!);

  //menghitung nilai
  double average = (kehadiran + uts + uas) / 3;

  print("\n=== DATA NILAI SISWA ===");
  print("Masukkan Nama Siswa  :$nama");
  print("Nilai UTS: $uts");
  print("Nilai UAS: $uas");
  print("Kehadiran: $kehadiran%");
  print("Rata-Rata: $average");

  print("\n ==== Status Kelulusan ===");
  if (average >= 75 && kehadiran >= 80 && uts >= 75 && uas >= 75) {
    print("Selamat, anda Lulus!✅");
  } else {
    print("Maaf, Anda Tidak Lulus!❌");
  }
}
