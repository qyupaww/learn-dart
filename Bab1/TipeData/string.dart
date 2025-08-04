void main() {
  String nolDua = 'Omke Gas';

  String woGib = '''
  Ini adalah string multi baris
  yang bisa digunakan untuk menulis
  teks panjang dengan mudah.
''';

  print(nolDua);
  print(woGib);

  String nama = 'Prabowo';
  String sapaan = 'Halo, $nama';
  print(sapaan);

  String panjang = 'Panjang: ${nama.length} karakter';
  print(panjang);
}
