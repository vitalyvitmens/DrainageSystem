enum Color {
  Zinc,
  RAL1014,
  RAL1015,
  RAL1018,
  RAL3005,
  RAL3005_RAL3005,
  RAL3009,
  RAL3011,
  RAL5005,
  RAL6005,
  RAL6005_RAL6005,
  RAL7004,
  RAL7024,
  RAL7024MAT,
  RAL7024MAT_RAL7024MAT,
  RAL8017,
  RAL8017_RAL8017,
  RAL8017MAT,
  RAL8019,
  RAL8019MAT,
  RAL9003,
  RAL9003_RAL9003,
  RAL9006,
  RAL9005MAT,
}

abstract class Hedge {
  /*
  Класс Hedge (изгородь), он принимает 
  на вход следующие свойства (параметры):
  - double length (длина изгороди в метрах)
  - double heigth (высота изгороди в метрах)
  - int num_rows_across (количество рядов прожилин = 2шт)
  - double length_pawn (длина Пэшки = 2.0м)
  одного элемента изгороди в шт)
  */
  final double length;
  final double heigth;
  final Color color;
  final double thickness;
  int num_rows_across = 2;
  final double length_pawn = 2.0;

  Hedge(this.length, this.heigth, this.color, this.thickness);

  @override
  String toString() {
    return '''
Длина забора:                           $length м 
Высота забора:                          $heigth м
''';
  }
}
