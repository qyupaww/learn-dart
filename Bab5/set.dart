void main(List<String> args) {
  // Membuat Set nama buah-buahan
  Set<String> orgUnik = {'Wowo', 'Girban', 'Owi', 'Bahlil'};

  print(orgUnik);

  // Menambahkan elemen
  orgUnik.add('Luhut');
  orgUnik.add('Wowo'); // Ini juga akan diabaikan
  print(orgUnik); // Output: {Apel, Jeruk, Mangga, Pisang}

  // Mengecek keberadaan elemen (sangat cepat)
  print(orgUnik.contains('Owi')); // Output: true
  print(orgUnik.contains('Anis')); // Output: false

  // Tidak bisa diakses dengan indeks: buahUnik[0] akan error!
}
