final listElementsEndOverhang = <Object>[];
Object sum_elements_end_overhang() {
  if (listElementsEndOverhang.isEmpty) {
    return 0;
  }
  return listElementsEndOverhang;
}

final listNumSheetsC8EndOverhang = <int>[];
int sum_num_sheetsC8_end_overhang() {
  if (listNumSheetsC8EndOverhang.isEmpty) {
    return 0;
  }
  return listNumSheetsC8EndOverhang
      .reduce((value, element) => value += element);
}

final listAreaC8EndOverhang = <double>[];
double sum_areaC8_end_overhang() {
  if (listAreaC8EndOverhang.isEmpty) {
    return 0;
  }
  return listAreaC8EndOverhang.reduce((value, element) => value += element);
}

final listlengthLplanksEndOverhang = <double>[];
double sum_length_Lplanks_end_overhang() {
  if (listlengthLplanksEndOverhang.isEmpty) {
    return 0;
  }
  return listlengthLplanksEndOverhang
      .reduce((value, element) => value += element);
}

final listScrewsEndOverhang = <int>[];
int sum_screws_hemming_end_overhang() {
  if (listScrewsEndOverhang.isEmpty) {
    return 0;
  }
  return listScrewsEndOverhang.reduce((value, element) => value += element);
}
