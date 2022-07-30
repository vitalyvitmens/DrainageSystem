import 'class_hemming.dart';

class EndOverhang extends Hemming {
  /*
  Класс EndOverhang (торцовый свес) наследуется от абстрактного 
  класса Hemming (подшива), он принимает 
  на вход следующие свойства (параметры):
  - double length (длина подшивы кровельного свеса в метрах)
  - double depth (глубина подшивы кровельного свеса в метрах)
  - double overhang_thickness (толщина торцового свеса в метрах)
  */
  final double overhang_thickness;

  EndOverhang(
    super.length,
    super.depth,
    super.color,
    super.thickness,
    this.overhang_thickness,
  );

  @override
  String toString() {
    return '''
Длина подшивы кровельного свеса:          $length м 
Глубина подшивы кровельного свеса:        $depth м
Толщина торцового свеса:                  $overhang_thickness м
''';
  }
}
