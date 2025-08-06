import 'dart:math';

void main(List<String> args) {
  var baseTriangle = 4;
  var tinggiTriangle = 8;

  var areaTriangle = (baseTriangle * tinggiTriangle) / 2;
  print("Luas Segitiga Adalah: $areaTriangle");

  var hypoTriangle = sqrt(
    (baseTriangle * baseTriangle) + (tinggiTriangle * tinggiTriangle),
  );
  var convertHypo = hypoTriangle.toStringAsFixed(2);

  print("Sisi miring segitiga adalah: $convertHypo");
}
