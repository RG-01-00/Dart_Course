cacul_name(String name) {
  return name.length;
}

List calcul_sum(List a) {
  double sum = 0;
  for (int i = 0; i < a.length; i++) {
    sum += a[i];
  }

  var z = sum / a.length;
  return [sum, z];
}

List users = [
  {'name': 'mikassa', 'age': 12, 'job': 'developper'},
  {'name': 'lisa', 'age': 25, 'job': 'actress'},
  {'name': 'mohamed', 'age': 19, 'job': 'man'},
  {'name': 'roufaida', 'age': 20, 'job': 'king of the world'}
];
