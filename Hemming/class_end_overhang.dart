import '../Hedge/class_hedge.dart';
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

  get_result_hemming() {
    if (length > 0) {
      if (color == Color.RAL7024MAT ||
          color == Color.RAL8017MAT ||
          color == Color.RAL8019MAT ||
          color == Color.RAL9005MAT) {
        if (thickness == 0.50) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.50мм:              ${get_C8_cost_050mat().toStringAsFixed(2)} руб

Количество Матовых L-планок ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Матовых L-планок ${(overhang_thickness * 1000).toInt()}x50:  ${get_Lplank_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.45) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.45мм:              ${get_C8_cost_045mat().toStringAsFixed(2)} руб

Количество Матовых L-планок ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Матовых L-планок ${(overhang_thickness * 1000).toInt()}x50:  ${get_Lplank_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else {}
      } else if (color == Color.RAL1014 ||
          color == Color.RAL1015 ||
          color == Color.RAL1018 ||
          color == Color.RAL3005 ||
          color == Color.RAL3009 ||
          color == Color.RAL3011 ||
          color == Color.RAL5005 ||
          color == Color.RAL6005 ||
          color == Color.RAL7004 ||
          color == Color.RAL7024 ||
          color == Color.RAL8017 ||
          color == Color.RAL8019 ||
          color == Color.RAL9003 ||
          color == Color.RAL9006) {
        if (thickness == 0.50) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.50мм:               ${get_C8_cost_050().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_050().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.45) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.45мм:               ${get_C8_cost_045().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.40) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.40мм:               ${get_C8_cost_040().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.35) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.35мм:               ${get_C8_cost_035().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        }
      } else if (color == Color.Zinc) {
        if (thickness == 0.50) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.50мм:                ${get_C8_cost_050zinc().toStringAsFixed(2)} руб

Количество  Оцинкованных L-планок         ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Оцинкованных L-планок           ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.45) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.45мм:                ${get_C8_cost_045zinc().toStringAsFixed(2)} руб

Количество  Оцинкованных L-планок         ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Оцинкованных L-планок           ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.40) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ ТОРЦОВОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.40мм:                ${get_C8_cost_040zinc().toStringAsFixed(2)} руб

Количество Оцинкованных L-планок          ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Оцинкованных L-планок           ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else {}
      }
    } else {}
  }
}
