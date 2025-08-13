class Owi {
  String? nama;
  int? umur;
  String? pekerjaan;

  void nipu() {
    print('Tahun ini $nama berumur $umur, dan pekerjaannya adalah $pekerjaan');
  }

  void ijazah() {
    print('ijazah nya aseli atau palsu?');
  }
}

void main(List<String> args) {
  var owi1 = Owi();

  owi1.nama = 'Owi';
  owi1.umur = 69;
  owi1.pekerjaan = 'Nimvu Nemgara';

  owi1.nipu();
  owi1.ijazah();
}
