import '../Hedge/class_hedge.dart';
import 'class_hemming.dart';
import 'methods_calculating_elements_cornice_overhang.dart';
import 'methods_cost_calculation_elements_cornice_overhang.dart';

class CorniceOverhang extends Hemming {
  /*
  Класс CorniceOverhang (карнизный свес) наследуется от абстрактного 
  класса Hemming (подшива), он принимает 
  на вход следующие свойства (параметры):
  - double length (длина подшивы кровельного свеса в метрах)
  - double depth (глубина подшивы кровельного свеса в метрах)
  - double overhang_thickness (толщина карнизного свеса в метрах)
  */
  final double overhang_thickness;

  CorniceOverhang(
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
Толщина карнизного свеса:                 $overhang_thickness м
''';
  }

  get_result_hemming() {
    int num_sheetsC8 = get_num_sheetsC8();
    double areaC8 = get_areaC8();
    double length_Lplanks = get_length_Lplanks();
    int num_screws_cornice_overhang = get_num_screws_hemming();
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
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.50мм:               ${get_C8_cost_050().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_050().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.45) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.45мм:               ${get_C8_cost_045().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.40) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.40мм:               ${get_C8_cost_040().toStringAsFixed(2)} руб

Количество Глянцевых L-планок             ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Глянцевых L-планок              ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.35) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
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
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.50мм:                ${get_C8_cost_050zinc().toStringAsFixed(2)} руб

Количество  Оцинкованных L-планок         ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Оцинкованных L-планок           ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.45) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.45мм:                ${get_C8_cost_045zinc().toStringAsFixed(2)} руб

Количество  Оцинкованных L-планок         ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Оцинкованных L-планок           ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else if (thickness == 0.40) {
          print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ПОДШИВЫ КАРНИЗНОГО СВЕСА:\n${toString()}
Количество листов С8:                     ${depth} м = ${get_num_sheetsC8()} шт
Площадь листов С8:                        ${get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.40мм:                ${get_C8_cost_040zinc().toStringAsFixed(2)} руб

Количество Оцинкованных L-планок          ${(overhang_thickness * 1000).toInt()}x50: ${get_num_Lplank()} шт = ${get_length_Lplanks()} мп
Стоимость Оцинкованных L-планок           ${(overhang_thickness * 1000).toInt()}x50: ${get_Lplank_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 4.8х29 и цена:       ${get_num_screws_hemming()} шт = ${get_screws_hemming_cost().toStringAsFixed(2)} руб\n''');
        } else {}
        listNumSheetsC8CorniceOverhang.add(num_sheetsC8);
        listAreaC8CorniceOverhang.add(areaC8);
        listlengthLplanksCorniceOverhang.add(length_Lplanks);
        listScrewsCorniceOverhang.add(num_screws_cornice_overhang);
      }
    } else {}
  }

  static get_total_result_cornice_overhang() {
    if (listElementsCorniceOverhang.length > 0) {
      print(
          'КОЛИЧЕСТВО КАРНИЗНЫХ СВЕСОВ:              ${listElementsCorniceOverhang.length} шт');
      print(
          '\nСУММАРНОЕ КОЛИЧЕСТВО ЭЛЕМЕНТОВ ПОДШИВЫ КАРНИЗНОГО СВЕСА СО ВСЕХ СВЕСОВ:');
      if (sum_num_sheetsC8_cornice_overhang() > 0) {
        print(
            'Профиль С8 высота и количество:           м ${sum_num_sheetsC8_cornice_overhang()} шт');
        listElementsCorniceOverhang.add(sum_num_sheetsC8_cornice_overhang());
      } else {}
      if (sum_areaC8_cornice_overhang() > 0) {
        print(
            'Профиль С8 для подшивы карнизного свеса:  ${sum_areaC8_cornice_overhang()} м2 = ${sum_cost_areaC8_cornice_overhang().toStringAsFixed(2)} руб');
        listElementsCorniceOverhang.add(sum_areaC8_cornice_overhang());
        CostElementsCorniceOverhang.add(sum_cost_areaC8_cornice_overhang());
      } else {}
      if (sum_length_Lplanks_cornice_overhang() > 0) {
        print(
            'L-планки для подшивы карнизного свеса:    ${sum_length_Lplanks_cornice_overhang()} шт = ${sum_cost_length_Lplanks_cornice_overhang().toStringAsFixed(2)} руб');
        listElementsCorniceOverhang.add(sum_length_Lplanks_cornice_overhang());
        CostElementsCorniceOverhang.add(
            sum_cost_length_Lplanks_cornice_overhang());
      } else {}
      if (sum_screws_hemming_cornice_overhang() > 0) {
        print(
            'Cаморезы металл по дереву 4.8х29:         ${sum_screws_hemming_cornice_overhang()} шт = ${sum_cost_screws_hemming_cornice_overhang().toStringAsFixed(2)} руб');
        listElementsCorniceOverhang.add(sum_screws_hemming_cornice_overhang());
        CostElementsCorniceOverhang.add(
            sum_cost_screws_hemming_cornice_overhang());
      } else {}
      print(
          '\nИТОГО:                                    ${sum_elements_cornice_overhang()} шт = ${sum_costs_elements_cornice_overhang().toStringAsFixed(2)} руб\n');
    } else {}
  }
}
