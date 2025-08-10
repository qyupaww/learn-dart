void main(List<String> args) {
  // Membuat Map untuk data diri
  Map<String, dynamic> dataDiri = {
    'nama': 'Isal',
    'umur': 22,
    'pekerjaan': 'Mobile Dev',
    'sudahMenikah': false,
  };

  // Mengakses nilai menggunakan kuncinya
  print(dataDiri['nama']);
  print(dataDiri['umur']);

  // Mengubah nilai
  dataDiri['pekerjaan'] = 'Fullstack Mobile Dev';
  print(dataDiri);

  // Menambahkan pasangan kunci-nilai baru
  dataDiri['kota'] = 'Bandung';
  print(dataDiri['kota']); // Output: Bandung
}
