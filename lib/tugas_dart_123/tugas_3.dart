void main() {
  print("=========================================");
  print("Menampilkan Bilangan Ganjil");
  String ganjil = ('');
  print("angka ganjil: ");
  for (int i = 1; i <= 20; i += 2) {
    ganjil += "$i, ";
  }
  print(ganjil);

  // Penjelasan:
  // for (int i = 1; i <= 20; i++) itu perulangan dari 1 sampai 20.
  // i % 2 != 0 ngecek apakah i itu ganjil (sisa bagi 2 bukan nol).
  // Kalau ganjil, dia print(i).

  print("=========================================");
  print("Cetak Karakter: ");
  String bintang = ('*');
  for (int i = 1; i <= 5; i++) {
    bintang += '*';
  }
  print(bintang);

  print("=========================================");
  print("Nama Berulang: ");
  int i = 1;
  while (i <= 4) {
    print("aisah");
    i++;
  }

  print("=========================================");
  print("Perulangan Dalam List");
  List<String> fruits = ['Jeruk', 'Durian', 'Rambutan'];
  for (var b in fruits) {
    print("Saya Suka Buah $b");
  }

  print("=========================================");

  print("Simulasi Item: ");
  List<String> item = ['Beras', 'Minyak', 'Gula', 'Susu'];
  for (int i = 0; i < item.length; i++) {
    print('Item ke-${i + 1}: ${item[i]}');
  }
}
