void main() {
  var hasil1 = cekDewasa("Wowo", 20);
  var hasil2 = cekDewasa("Girban", 15);
  var hasil3 = cekDewasa("Owi", 18);

  print(hasil1);
  print(hasil2);
  print(hasil3);
}

String cekDewasa(String nama, int umur) {
  if (umur >= 18) {
    return "$nama sudah dewasa";
  } else {
    return "$nama masih anak-anak";
  }
}
