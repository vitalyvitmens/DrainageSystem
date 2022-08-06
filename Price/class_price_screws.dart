class Screws {
  /*
  Класс Screws (Саморезы), он принимает 
  на вход следующие свойства (параметры):
  - double screw_48x29 (стоимость самореза металл по дереву 4.8х29 за 1шт в руб)
  - double screw_48x70 (стоимость самореза металл по дереву 4.8х70 за 1шт в руб)
  - double screw_55x19 (стоимость самореза металл по металу 5.5х19 за 1шт в руб)
  */
  static const double screw_48x29 = 0.17;
  static const double screw_48x70 = 0.24;
  static const double screw_55x19 = 0.17;

  @override
  String toString() {
    return '''
Стоимость самореза металл по дереву 4.8х29 за 1шт:        ${screw_48x29.toStringAsFixed(2)} руб 
Стоимость самореза металл по дереву 4.8х70 за 1шт:        ${screw_48x70.toStringAsFixed(2)} руб 
Стоимость самореза металл по металу 5.5х19 за 1шт:        ${screw_55x19.toStringAsFixed(2)} руб 
''';
  }
}
