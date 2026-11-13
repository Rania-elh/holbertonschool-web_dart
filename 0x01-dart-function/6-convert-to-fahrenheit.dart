List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temperature) {
    double fahrenheit = (temperature * 9 / 5) + 32;
    return double.parse(fahrenheit.toStringAsFixed(2));
  }).toList();
}