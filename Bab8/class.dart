// 1. Membuat Class (Cetakan) Mobil
class Mobil {
  // Properti (Data/Atribut)
  String? warna;
  String? merek;
  int? tahun;

  // Metode (Perilaku/Fungsi)
  void maju() {
    print('$merek warna $warna sedang melaju ke depan.');
  }

  void klakson() {
    print('Tiiin! Tiiin!');
  }
}

void main() {
  // 2. Membuat Object (Hasil Nyata) dari class Mobil
  var mobil1 = Mobil();

  // 3. Mengatur data untuk objek mobil1
  mobil1.warna = 'Putih';
  mobil1.merek = 'Avanza';
  mobil1.tahun = 2022;

  // 4. Memanggil metode dari objek mobil1
  mobil1.maju(); // Output: Avanza warna Putih sedang melaju ke depan.
  mobil1.klakson(); // Output: Tiiin! Tiiin!
}
