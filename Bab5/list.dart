void main(List<String> args) {
  List<String> buah = ['Apel', 'Jeruk', 'Mangga', 'Apel'];

  // Mengakses elemen berdasarkan indeks (dimulai dari 0)
  print(buah[0]);
  print(buah[2]);

  // Menambahkan elemen baru di akhir list
  buah.add('Pisang');
  print(buah);

  // Duplikasi diperbolehkan
  print(buah.length); // Output: 5 (elemen 'Apel' ada dua)
}
