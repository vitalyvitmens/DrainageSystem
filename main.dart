import 'Drainage/class_drainage_cornice.dart';
import 'Drainage/methods_calculating_elements_drainage.dart';
import 'Drainage/methods_cost_calculation_elements_drainage.dart';
import 'Hedge/class_fence.dart';
import 'Hedge/class_hedge.dart';
import 'Hedge/class_profileC8.dart';
import 'Hedge/class_profileMP20.dart';

void main() {
  final C8 = ProfileC8(36, 1.5, Color.RAL8017, 0.45);
  final C8_two = ProfileC8(0, 1.5, Color.RAL8017, 0.35);
  final C8_three = ProfileC8(0, 1.7, Color.RAL7024MAT, 0.45);
  final C8_four = ProfileC8(0, 2.0, Color.Zinc, 0.45);

  final MP20 = ProfileMP20(0, 1.5, Color.RAL8017, 0.45);
  final MP20_two = ProfileMP20(0, 1.5, Color.RAL8017, 0.50);
  final MP20_three = ProfileMP20(0, 1.7, Color.RAL8017MAT, 0.50);
  final MP20_four = ProfileMP20(0, 2.0, Color.Zinc, 0.50);

  final fence = Fence(0, 1.5, 0.040, Color.RAL8017_RAL8017, 0.40);
  final fence_two = Fence(0, 1.6, 0.040, Color.RAL3005_RAL3005, 0.40);
  final fence_three = Fence(0, 1.7, 0.040, Color.RAL9003_RAL9003, 0.40);
  final fence_four = Fence(0, 2.0, 0.040, Color.RAL7024MAT_RAL7024MAT, 0.40);

  var cornice_one = DrainageCornice(12.0, 3.0, 1);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_one (первый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №1 в метрах)
  - double downpipe_height (высота от карниза №1 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №1)
  */
  var cornice_two = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_two (второй
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №2 в метрах)
  - double downpipe_height (высота от карниза №2 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №2)
  */
  var cornice_three = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_three (третий
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №3 в метрах)
  - double downpipe_height (высота от карниза №3 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №3)
  */
  var cornice_four = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_four (четвёртый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №4 в метрах)
  - double downpipe_height (высота от карниза №4 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №4)
  */
  var cornice_five = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_five (пятый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №5 в метрах)
  - double downpipe_height (высота от карниза №5 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №5)
  */
  var cornice_six = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_six (шестой
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №6 в метрах)
  - double downpipe_height (высота от карниза №6 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №6)
  */

  if (C8.length > 0) {
    if (C8.color == Color.RAL7024MAT ||
        C8.color == Color.RAL8017MAT ||
        C8.color == Color.RAL8019MAT ||
        C8.color == Color.RAL9005MAT) {
      if (C8.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.50мм:              ${C8.get_C8_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.45мм:              ${C8.get_C8_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (C8.color == Color.RAL1014 ||
        C8.color == Color.RAL1015 ||
        C8.color == Color.RAL1018 ||
        C8.color == Color.RAL3005 ||
        C8.color == Color.RAL3009 ||
        C8.color == Color.RAL3011 ||
        C8.color == Color.RAL5005 ||
        C8.color == Color.RAL6005 ||
        C8.color == Color.RAL7004 ||
        C8.color == Color.RAL7024 ||
        C8.color == Color.RAL8017 ||
        C8.color == Color.RAL8019 ||
        C8.color == Color.RAL9003 ||
        C8.color == Color.RAL9006) {
      if (C8.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.50мм:               ${C8.get_C8_cost_050().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.45мм:               ${C8.get_C8_cost_045().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.40мм:               ${C8.get_C8_cost_040().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.35мм:               ${C8.get_C8_cost_035().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (C8.color == Color.Zinc) {
      if (C8.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.50мм:                ${C8.get_C8_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.45мм:                ${C8.get_C8_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8
Количество листов С8:                     ${C8.heigth} м = ${C8.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.40мм:                ${C8.get_C8_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8.get_num_pawnsC8()} шт = ${C8.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8.get_num_screwsC8()} шт = ${C8.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (C8_two.length > 0) {
    if (C8_two.color == Color.RAL7024MAT ||
        C8_two.color == Color.RAL8017MAT ||
        C8_two.color == Color.RAL8019MAT ||
        C8_two.color == Color.RAL9005MAT) {
      if (C8_two.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.50мм:              ${C8_two.get_C8_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8_two.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_two.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.45мм:              ${C8_two.get_C8_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8_two.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (C8_two.color == Color.RAL1014 ||
        C8_two.color == Color.RAL1015 ||
        C8_two.color == Color.RAL1018 ||
        C8_two.color == Color.RAL3005 ||
        C8_two.color == Color.RAL3009 ||
        C8_two.color == Color.RAL3011 ||
        C8_two.color == Color.RAL5005 ||
        C8_two.color == Color.RAL6005 ||
        C8_two.color == Color.RAL7004 ||
        C8_two.color == Color.RAL7024 ||
        C8_two.color == Color.RAL8017 ||
        C8_two.color == Color.RAL8019 ||
        C8_two.color == Color.RAL9003 ||
        C8_two.color == Color.RAL9006) {
      if (C8_two.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.50мм:               ${C8_two.get_C8_cost_050().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_two.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_two.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.45мм:               ${C8_two.get_C8_cost_045().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_two.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_two.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.40мм:               ${C8_two.get_C8_cost_040().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_two.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_two.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.35мм:               ${C8_two.get_C8_cost_035().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_two.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (C8_two.color == Color.Zinc) {
      if (C8_two.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.50мм:                ${C8_two.get_C8_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_two.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_two.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.45мм:                ${C8_two.get_C8_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_two.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_two.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_two
Количество листов С8:                     ${C8_two.heigth} м = ${C8_two.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_two.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.40мм:                ${C8_two.get_C8_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_two.get_num_pawnsC8()} шт = ${C8_two.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_two.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_two.get_num_screwsC8()} шт = ${C8_two.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (C8_three.length > 0) {
    if (C8_three.color == Color.RAL7024MAT ||
        C8_three.color == Color.RAL8017MAT ||
        C8_three.color == Color.RAL8019MAT ||
        C8_three.color == Color.RAL9005MAT) {
      if (C8_three.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.50мм:              ${C8_three.get_C8_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8_three.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_three.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.45мм:              ${C8_three.get_C8_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8_three.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (C8_three.color == Color.RAL1014 ||
        C8_three.color == Color.RAL1015 ||
        C8_three.color == Color.RAL1018 ||
        C8_three.color == Color.RAL3005 ||
        C8_three.color == Color.RAL3009 ||
        C8_three.color == Color.RAL3011 ||
        C8_three.color == Color.RAL5005 ||
        C8_three.color == Color.RAL6005 ||
        C8_three.color == Color.RAL7004 ||
        C8_three.color == Color.RAL7024 ||
        C8_three.color == Color.RAL8017 ||
        C8_three.color == Color.RAL8019 ||
        C8_three.color == Color.RAL9003 ||
        C8_three.color == Color.RAL9006) {
      if (C8_three.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.50мм:               ${C8_three.get_C8_cost_050().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_three.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_three.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.45мм:               ${C8_three.get_C8_cost_045().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_three.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_three.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.40мм:               ${C8_three.get_C8_cost_040().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_three.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_three.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.35мм:               ${C8_three.get_C8_cost_035().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_three.get_pawnsC8_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (C8_three.color == Color.Zinc) {
      if (C8_three.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.50мм:                ${C8_three.get_C8_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_three.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_three.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.45мм:                ${C8_three.get_C8_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_three.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб
 
Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_three.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_three
Количество листов С8:                     ${C8_three.heigth} м = ${C8_three.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_three.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.40мм:                ${C8_three.get_C8_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек С8:                      ${C8_three.get_num_pawnsC8()} шт = ${C8_three.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_three.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${C8_three.get_num_screwsC8()} шт = ${C8_three.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (C8_four.length > 0) {
    if (C8_four.color == Color.RAL7024MAT ||
        C8_four.color == Color.RAL8017MAT ||
        C8_four.color == Color.RAL8019MAT ||
        C8_four.color == Color.RAL9005MAT) {
      if (C8_four.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.50мм:              ${C8_four.get_C8_cost_050mat().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8_four.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_four.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Матовый 0.45мм:              ${C8_four.get_C8_cost_045mat().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Матовых Пэшек С8:               ${C8_four.get_pawnsC8_cost_mat().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (C8_four.color == Color.RAL1014 ||
        C8_four.color == Color.RAL1015 ||
        C8_four.color == Color.RAL1018 ||
        C8_four.color == Color.RAL3005 ||
        C8_four.color == Color.RAL3009 ||
        C8_four.color == Color.RAL3011 ||
        C8_four.color == Color.RAL5005 ||
        C8_four.color == Color.RAL6005 ||
        C8_four.color == Color.RAL7004 ||
        C8_four.color == Color.RAL7024 ||
        C8_four.color == Color.RAL8017 ||
        C8_four.color == Color.RAL8019 ||
        C8_four.color == Color.RAL9003 ||
        C8_four.color == Color.RAL9006) {
      if (C8_four.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.50мм:               ${C8_four.get_C8_cost_050().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_four.get_pawnsC8_cost().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_four.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.45мм:               ${C8_four.get_C8_cost_045().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_four.get_pawnsC8_cost().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_four.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.40мм:               ${C8_four.get_C8_cost_040().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_four.get_pawnsC8_cost().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_four.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Глянец 0.35мм:               ${C8_four.get_C8_cost_035().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Глянцевых Пэшек С8:             ${C8_four.get_pawnsC8_cost().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (C8_four.color == Color.Zinc) {
      if (C8_four.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.50мм:                ${C8_four.get_C8_cost_050zinc().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_four.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_four.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.45мм:                ${C8_four.get_C8_cost_045zinc().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_four.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else if (C8_four.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$C8_four
Количество листов С8:                     ${C8_four.heigth} м = ${C8_four.get_num_sheetsC8()} шт
Площадь листов С8:                        ${C8_four.get_areaC8().toStringAsFixed(3)} м2
Стоимость С8 Оцинк 0.40мм:                ${C8_four.get_C8_cost_040zinc().toStringAsFixed(2)} руб
  
Количество Пэшек С8:                      ${C8_four.get_num_pawnsC8()} шт = ${C8_four.get_length_pawnsC8()} мп
Стоимость Оцинкованных Пэшек С8:          ${C8_four.get_pawnsC8_cost_zinc().toStringAsFixed(2)} руб
  
Количество саморезов 5.5х19 и цена:       ${C8_four.get_num_screwsC8()} шт = ${C8_four.get_screwsC8_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (MP20.length > 0) {
    if (MP20.color == Color.RAL7024MAT ||
        MP20.color == Color.RAL8017MAT ||
        MP20.color == Color.RAL8019MAT ||
        MP20.color == Color.RAL9005MAT) {
      if (MP20.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.50мм:            ${MP20.get_MP20_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.45мм:            ${MP20.get_MP20_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (MP20.color == Color.RAL1014 ||
        MP20.color == Color.RAL1015 ||
        MP20.color == Color.RAL1018 ||
        MP20.color == Color.RAL3005 ||
        MP20.color == Color.RAL3009 ||
        MP20.color == Color.RAL3011 ||
        MP20.color == Color.RAL5005 ||
        MP20.color == Color.RAL6005 ||
        MP20.color == Color.RAL7004 ||
        MP20.color == Color.RAL7024 ||
        MP20.color == Color.RAL8017 ||
        MP20.color == Color.RAL8019 ||
        MP20.color == Color.RAL9003 ||
        MP20.color == Color.RAL9006) {
      if (MP20.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.50мм:             ${MP20.get_MP20_cost_050().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.45мм:             ${MP20.get_MP20_cost_045().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.40мм:             ${MP20.get_MP20_cost_040().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.35мм:             ${MP20.get_MP20_cost_035().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (MP20.color == Color.Zinc) {
      if (MP20.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.50мм:              ${MP20.get_MP20_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.45мм:              ${MP20.get_MP20_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20
Количество листов МП20:                   ${MP20.heigth} м = ${MP20.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.40мм:              ${MP20.get_MP20_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20.get_num_pawnsMP20()} шт = ${MP20.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20.get_num_screwsMP20()} шт = ${MP20.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (MP20_two.length > 0) {
    if (MP20_two.color == Color.RAL7024MAT ||
        MP20_two.color == Color.RAL8017MAT ||
        MP20_two.color == Color.RAL8019MAT ||
        MP20_two.color == Color.RAL9005MAT) {
      if (MP20_two.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.50мм:            ${MP20_two.get_MP20_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20_two.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_two.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.45мм:            ${MP20_two.get_MP20_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20_two.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (MP20_two.color == Color.RAL1014 ||
        MP20_two.color == Color.RAL1015 ||
        MP20_two.color == Color.RAL1018 ||
        MP20_two.color == Color.RAL3005 ||
        MP20_two.color == Color.RAL3009 ||
        MP20_two.color == Color.RAL3011 ||
        MP20_two.color == Color.RAL5005 ||
        MP20_two.color == Color.RAL6005 ||
        MP20_two.color == Color.RAL7004 ||
        MP20_two.color == Color.RAL7024 ||
        MP20_two.color == Color.RAL8017 ||
        MP20_two.color == Color.RAL8019 ||
        MP20_two.color == Color.RAL9003 ||
        MP20_two.color == Color.RAL9006) {
      if (MP20_two.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.50мм:             ${MP20_two.get_MP20_cost_050().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_two.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_two.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.45мм:             ${MP20_two.get_MP20_cost_045().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_two.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_two.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.40мм:             ${MP20_two.get_MP20_cost_040().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_two.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_two.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.35мм:             ${MP20_two.get_MP20_cost_035().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_two.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (MP20_two.color == Color.Zinc) {
      if (MP20_two.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.50мм:              ${MP20_two.get_MP20_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_two.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_two.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.45мм:              ${MP20_two.get_MP20_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_two.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_two.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_two
Количество листов МП20:                   ${MP20_two.heigth} м = ${MP20_two.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_two.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.40мм:              ${MP20_two.get_MP20_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_two.get_num_pawnsMP20()} шт = ${MP20_two.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_two.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_two.get_num_screwsMP20()} шт = ${MP20_two.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (MP20_three.length > 0) {
    if (MP20_three.color == Color.RAL7024MAT ||
        MP20_three.color == Color.RAL8017MAT ||
        MP20_three.color == Color.RAL8019MAT ||
        MP20_three.color == Color.RAL9005MAT) {
      if (MP20_three.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.50мм:            ${MP20_three.get_MP20_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20_three.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_three.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.45мм:            ${MP20_three.get_MP20_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20_three.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (MP20_three.color == Color.RAL1014 ||
        MP20_three.color == Color.RAL1015 ||
        MP20_three.color == Color.RAL1018 ||
        MP20_three.color == Color.RAL3005 ||
        MP20_three.color == Color.RAL3009 ||
        MP20_three.color == Color.RAL3011 ||
        MP20_three.color == Color.RAL5005 ||
        MP20_three.color == Color.RAL6005 ||
        MP20_three.color == Color.RAL7004 ||
        MP20_three.color == Color.RAL7024 ||
        MP20_three.color == Color.RAL8017 ||
        MP20_three.color == Color.RAL8019 ||
        MP20_three.color == Color.RAL9003 ||
        MP20_three.color == Color.RAL9006) {
      if (MP20_three.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.50мм:             ${MP20_three.get_MP20_cost_050().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_three.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_three.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.45мм:             ${MP20_three.get_MP20_cost_045().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_three.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_three.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.40мм:             ${MP20_three.get_MP20_cost_040().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_three.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_three.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.35мм:             ${MP20_three.get_MP20_cost_035().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_three.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (MP20_three.color == Color.Zinc) {
      if (MP20_three.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.50мм:              ${MP20_three.get_MP20_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_three.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_three.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.45мм:              ${MP20_three.get_MP20_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_three.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_three.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_three
Количество листов МП20:                   ${MP20_three.heigth} м = ${MP20_three.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_three.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.40мм:              ${MP20_three.get_MP20_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_three.get_num_pawnsMP20()} шт = ${MP20_three.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_three.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_three.get_num_screwsMP20()} шт = ${MP20_three.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (MP20_four.length > 0) {
    if (MP20_four.color == Color.RAL7024MAT ||
        MP20_four.color == Color.RAL8017MAT ||
        MP20_four.color == Color.RAL8019MAT ||
        MP20_four.color == Color.RAL9005MAT) {
      if (MP20_four.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.50мм:            ${MP20_four.get_MP20_cost_050mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20_four.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_four.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Матовый 0.45мм:            ${MP20_four.get_MP20_cost_045mat().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Матовых Пэшек МП20:             ${MP20_four.get_pawnsMP20_cost_mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    } else if (MP20_four.color == Color.RAL1014 ||
        MP20_four.color == Color.RAL1015 ||
        MP20_four.color == Color.RAL1018 ||
        MP20_four.color == Color.RAL3005 ||
        MP20_four.color == Color.RAL3009 ||
        MP20_four.color == Color.RAL3011 ||
        MP20_four.color == Color.RAL5005 ||
        MP20_four.color == Color.RAL6005 ||
        MP20_four.color == Color.RAL7004 ||
        MP20_four.color == Color.RAL7024 ||
        MP20_four.color == Color.RAL8017 ||
        MP20_four.color == Color.RAL8019 ||
        MP20_four.color == Color.RAL9003 ||
        MP20_four.color == Color.RAL9006) {
      if (MP20_four.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.50мм:             ${MP20_four.get_MP20_cost_050().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_four.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_four.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.45мм:             ${MP20_four.get_MP20_cost_045().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_four.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_four.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.40мм:             ${MP20_four.get_MP20_cost_040().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_four.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_four.thickness == 0.35) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Глянец 0.35мм:             ${MP20_four.get_MP20_cost_035().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Глянцевых Пэшек МП20:           ${MP20_four.get_pawnsMP20_cost().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      }
    } else if (MP20_four.color == Color.Zinc) {
      if (MP20_four.thickness == 0.50) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.50мм:              ${MP20_four.get_MP20_cost_050zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_four.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_four.thickness == 0.45) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.45мм:              ${MP20_four.get_MP20_cost_045zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_four.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else if (MP20_four.thickness == 0.40) {
        print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$MP20_four
Количество листов МП20:                   ${MP20_four.heigth} м = ${MP20_four.get_num_sheetsMP20()} шт
Площадь листов МП20:                      ${MP20_four.get_areaMP20().toStringAsFixed(3)} м2
Стоимость МП20 Оцинк 0.40мм:              ${MP20_four.get_MP20_cost_040zinc().toStringAsFixed(2)} руб

Количество Пэшек МП20:                    ${MP20_four.get_num_pawnsMP20()} шт = ${MP20_four.get_length_pawnsMP20()} мп
Стоимость Оцинкованных Пэшек МП20:        ${MP20_four.get_pawnsMP20_cost_zinc().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${MP20_four.get_num_screwsMP20()} шт = ${MP20_four.get_screwsMP20_cost().toStringAsFixed(2)} руб\n''');
      } else {}
    }
  } else {}

  if (fence.length > 0) {
    if (fence.color == Color.RAL3005_RAL3005 ||
        fence.color == Color.RAL6005_RAL6005 ||
        fence.color == Color.RAL8017_RAL8017 ||
        fence.color == Color.RAL9003_RAL9003) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence
Количество штакетин:                      ${fence.heigth} м = ${fence.get_num_fence()} шт
Погонаж штакетник:                        ${fence.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х глянцевого 0.40мм штакета:   ${fence.get_fence_double_sided_cost_040().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence.get_num_screws_fence()} шт = ${fence.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else if (fence.color == Color.RAL7024MAT_RAL7024MAT) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence
Количество штакетин:                      ${fence.heigth} м = ${fence.get_num_fence()} шт
Погонаж штакетник:                        ${fence.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х матового 0.40мм штакета:     ${fence.get_fence_double_sided_cost_040mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence.get_num_screws_fence()} шт = ${fence.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else {}
  } else {}

  if (fence_two.length > 0) {
    if (fence_two.color == Color.RAL3005_RAL3005 ||
        fence_two.color == Color.RAL6005_RAL6005 ||
        fence_two.color == Color.RAL8017_RAL8017 ||
        fence_two.color == Color.RAL9003_RAL9003) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence_two
Количество штакетин:                      ${fence_two.heigth} м = ${fence_two.get_num_fence()} шт
Погонаж штакетник:                        ${fence_two.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х глянцевого 0.40мм штакета:   ${fence_two.get_fence_double_sided_cost_040().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence_two.get_num_screws_fence()} шт = ${fence_two.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else if (fence_two.color == Color.RAL7024MAT_RAL7024MAT) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence_two
Количество штакетин:                      ${fence_two.heigth} м = ${fence_two.get_num_fence()} шт
Погонаж штакетник:                        ${fence_two.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х матового 0.40мм штакета:     ${fence_two.get_fence_double_sided_cost_040mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence_two.get_num_screws_fence()} шт = ${fence_two.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else {}
  } else {}

  if (fence_three.length > 0) {
    if (fence_three.color == Color.RAL3005_RAL3005 ||
        fence_three.color == Color.RAL6005_RAL6005 ||
        fence_three.color == Color.RAL8017_RAL8017 ||
        fence_three.color == Color.RAL9003_RAL9003) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence_three
Количество штакетин:                      ${fence_three.heigth} м = ${fence_three.get_num_fence()} шт
Погонаж штакетник:                        ${fence_three.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х глянцевого 0.40мм штакета:   ${fence_three.get_fence_double_sided_cost_040().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence_three.get_num_screws_fence()} шт = ${fence_three.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else if (fence_three.color == Color.RAL7024MAT_RAL7024MAT) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence_three
Количество штакетин:                      ${fence_three.heigth} м = ${fence_three.get_num_fence()} шт
Погонаж штакетник:                        ${fence_three.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х матового 0.40мм штакета:     ${fence_three.get_fence_double_sided_cost_040mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence_three.get_num_screws_fence()} шт = ${fence_three.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else {}
  } else {}

  if (fence_four.length > 0) {
    if (fence_four.color == Color.RAL3005_RAL3005 ||
        fence_four.color == Color.RAL6005_RAL6005 ||
        fence_four.color == Color.RAL8017_RAL8017 ||
        fence_four.color == Color.RAL9003_RAL9003) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence_four
Количество штакетин:                      ${fence_four.heigth} м = ${fence_four.get_num_fence()} шт
Погонаж штакетник:                        ${fence_four.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х глянцевого 0.40мм штакета:   ${fence_four.get_fence_double_sided_cost_040().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence_four.get_num_screws_fence()} шт = ${fence_four.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else if (fence_four.color == Color.RAL7024MAT_RAL7024MAT) {
      print('''
РАСЧЁТНЫЕ ПАРАМЕТРЫ ЗАБОРА:\n$fence_four
Количество штакетин:                      ${fence_four.heigth} м = ${fence_four.get_num_fence()} шт
Погонаж штакетник:                        ${fence_four.get_length_fence().toStringAsFixed(3)} мп
Стоимость 2х матового 0.40мм штакета:     ${fence_four.get_fence_double_sided_cost_040mat().toStringAsFixed(2)} руб

Количество саморезов 5.5х19 и цена:       ${fence_four.get_num_screws_fence()} шт = ${fence_four.get_screws_fence_cost().toStringAsFixed(2)} руб\n''');
    } else {}
  } else {}

  // print('\n${PriceDrainage().toString()}');
  // print('${PriceHedge().toString()}');

  int gutters1 = cornice_one.get_gutters().ceil();
  double gutters_cost1 = cornice_one.get_gutters_cost();
  int gutter_connectors1 = cornice_one.get_gutter_connectors();
  double gutter_connectors_cost1 = cornice_one.get_gutter_connectors_cost();
  int plugs1 = cornice_one.get_plugs();
  double plugs_cost1 = cornice_one.get_plugs_cost();
  int gutter_holders1 = cornice_one.get_gutter_holders();
  double gutter_holder_cost1 = cornice_one.get_gutter_holders_cost();
  int gutter_angles1 = cornice_one.get_gutter_angles();
  double gutter_angles_cost1 = cornice_one.get_gutter_angles_cost();
  int funnels1 = cornice_one.get_funnels();
  double funnels_cost1 = cornice_one.get_funnels_cost();
  int elbows1 = cornice_one.get_elbows();
  double elbows_cost1 = cornice_one.get_elbows_cost();
  int bigs_pipes1 = cornice_one.get_bigs_pipes();
  double bigs_pipes_cost1 = cornice_one.get_bigs_pipes_cost();
  int pipe_connect1 = cornice_one.get_pipe_connectors();
  double pipe_connect_cost1 = cornice_one.get_pipe_connectors_cost();
  int small_pipes1 = cornice_one.get_small_pipes();
  double small_pipes_cost1 = cornice_one.get_small_pipes_cost();
  int tips1 = cornice_one.get_tips();
  double tips_cost1 = cornice_one.get_tips_cost();
  int pipe_holders1 = cornice_one.get_pipe_holders();
  double pipe_holders_cost1 = cornice_one.get_pipe_holders_cost();
  int pins1 = cornice_one.get_pins();
  double pins_cost1 = cornice_one.get_pins_cost();

  if (cornice_one.cornice_length > 0.0) {
    print('''
${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):       ${gutters1} шт = ${gutters_cost1.toStringAsFixed(2)} руб
Соединитель желоба: $gutter_connectors1 шт = ${gutter_connectors_cost1.toStringAsFixed(2)} руб''');
    if (plugs1 == 0) {
    } else {
      print(
          '''Заглушка желоба:    $plugs1 шт = ${plugs_cost1.toStringAsFixed(2)} руб''');
      listPlugs.add(plugs1);
      listPlugsCost.add(plugs_cost1);
    }
    print(
        '''Держатель желоба:   $gutter_holders1 шт = ${gutter_holder_cost1.toStringAsFixed(2)} руб''');
    listGutters.add(gutters1);
    listGuttersCost.add(gutters_cost1);
    listGutterConnect.add(gutter_connectors1);
    listGutterConnectCost.add(gutter_connectors_cost1);
    listGutterHolders.add(gutter_holders1);
    listGutterHoldersCost.add(gutter_holder_cost1);
    listGutterAngles.add(gutter_angles1);
    listGutterAnglesCost.add(gutter_angles_cost1);
  } else {}

  if (cornice_one.num_downpipe > 0) {
    print('''
Воронка:            $funnels1 шт = ${funnels_cost1.toStringAsFixed(2)} руб
Колено:             $elbows1 шт = ${elbows_cost1.toStringAsFixed(2)} руб
Труб (3м):          ${bigs_pipes1} шт = ${bigs_pipes_cost1.toStringAsFixed(2)} руб''');
    if (pipe_connect1 == 0) {
    } else {
      print(
          '''Соединитель трубы:  $pipe_connect1 шт = ${pipe_connect_cost1.toStringAsFixed(2)} руб''');
      listPipeConnect.add(pipe_connect1);
      listPipeConnectCost.add(pipe_connect_cost1);
    }
    print('''
Труб (1м):          ${small_pipes1} шт = ${small_pipes_cost1.toStringAsFixed(2)} руб
Отмёт:              ${tips1} шт = ${tips_cost1.toStringAsFixed(2)} руб
Держатель трубы:    ${pipe_holders1} шт = ${pipe_holders_cost1.toStringAsFixed(2)} руб
Штырь:              ${pins1} шт = ${pins_cost1.toStringAsFixed(2)} руб
''');
    listFunnels.add(funnels1);
    listFunnelsCost.add(funnels_cost1);
    listElbows.add(elbows1);
    listElbowsCost.add(elbows_cost1);
    listBigsPipes.add(bigs_pipes1);
    listBigsPipesCost.add(bigs_pipes_cost1);
    listSmallPipes.add(small_pipes1);
    listSmallPipesCost.add(small_pipes_cost1);
    listTips.add(tips1);
    listTipsCost.add(tips_cost1);
    listPipeHolders.add(pipe_holders1);
    listPipeHoldersCost.add(pipe_holders_cost1);
    listPins.add(pins1);
    listPinsCost.add(pins_cost1);
  } else {}

  int gutters2 = cornice_two.get_gutters().ceil();
  double gutters_cost2 = cornice_two.get_gutters_cost();
  int gutter_connectors2 = cornice_two.get_gutter_connectors();
  double gutter_connectors_cost2 = cornice_two.get_gutter_connectors_cost();
  int plugs2 = cornice_two.get_plugs();
  double plugs_cost2 = cornice_two.get_plugs_cost();
  int gutter_holders2 = cornice_two.get_gutter_holders();
  double gutter_holder_cost2 = cornice_two.get_gutter_holders_cost();
  int gutter_angles2 = cornice_two.get_gutter_angles();
  double gutter_angles_cost2 = cornice_two.get_gutter_angles_cost();
  int funnels2 = cornice_two.get_funnels();
  double funnels_cost2 = cornice_two.get_funnels_cost();
  int elbows2 = cornice_two.get_elbows();
  double elbows_cost2 = cornice_two.get_elbows_cost();
  int bigs_pipes2 = cornice_two.get_bigs_pipes();
  double bigs_pipes_cost2 = cornice_two.get_bigs_pipes_cost();
  int pipe_connect2 = cornice_two.get_pipe_connectors();
  double pipe_connect_cost2 = cornice_two.get_pipe_connectors_cost();
  int small_pipes2 = cornice_two.get_small_pipes();
  double small_pipes_cost2 = cornice_two.get_small_pipes_cost();
  int tips2 = cornice_two.get_tips();
  double tips_cost2 = cornice_two.get_tips_cost();
  int pipe_holders2 = cornice_two.get_pipe_holders();
  double pipe_holders_cost2 = cornice_two.get_pipe_holders_cost();
  int pins2 = cornice_two.get_pins();
  double pins_cost2 = cornice_two.get_pins_cost();

  if (cornice_two.cornice_length > 0.0) {
    print('''
${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):       ${gutters2} шт = ${gutters_cost2.toStringAsFixed(2)} руб
Соединитель желоба: $gutter_connectors2 шт = ${gutter_connectors_cost2.toStringAsFixed(2)} руб''');
    if (plugs2 == 0) {
    } else {
      print(
          '''Заглушка желоба:    $plugs2 шт = ${plugs_cost2.toStringAsFixed(2)} руб''');
      listPlugs.add(plugs2);
      listPlugsCost.add(plugs_cost2);
    }
    print(
        '''Держатель желоба:   $gutter_holders2 шт = ${gutter_holder_cost2.toStringAsFixed(2)} руб''');
    listGutters.add(gutters2);
    listGuttersCost.add(gutters_cost2);
    listGutterConnect.add(gutter_connectors2);
    listGutterConnectCost.add(gutter_connectors_cost2);
    listGutterHolders.add(gutter_holders2);
    listGutterHoldersCost.add(gutter_holder_cost2);
    listGutterAngles.add(gutter_angles2);
    listGutterAnglesCost.add(gutter_angles_cost2);
  } else {}

  if (cornice_two.num_downpipe > 0) {
    print('''
Воронка:            $funnels2 шт = ${funnels_cost2.toStringAsFixed(2)} руб
Колено:             $elbows2 шт = ${elbows_cost2.toStringAsFixed(2)} руб
Труб (3м):          ${bigs_pipes2} шт = ${bigs_pipes_cost2.toStringAsFixed(2)} руб''');
    if (pipe_connect2 == 0) {
    } else {
      print(
          '''Соединитель трубы:  $pipe_connect2 шт = ${pipe_connect_cost2.toStringAsFixed(2)} руб''');
      listPipeConnect.add(pipe_connect2);
      listPipeConnectCost.add(pipe_connect_cost2);
    }
    print('''
Труб (1м):          ${small_pipes2} шт = ${small_pipes_cost2.toStringAsFixed(2)} руб
Отмёт:              ${tips2} шт = ${tips_cost2.toStringAsFixed(2)} руб
Держатель трубы:    ${pipe_holders2} шт = ${pipe_holders_cost2.toStringAsFixed(2)} руб
Штырь:              ${pins2} шт = ${pins_cost2.toStringAsFixed(2)} руб
''');
    listFunnels.add(funnels2);
    listFunnelsCost.add(funnels_cost2);
    listElbows.add(elbows2);
    listElbowsCost.add(elbows_cost2);
    listBigsPipes.add(bigs_pipes2);
    listBigsPipesCost.add(bigs_pipes_cost2);
    listSmallPipes.add(small_pipes2);
    listSmallPipesCost.add(small_pipes_cost2);
    listTips.add(tips2);
    listTipsCost.add(tips_cost2);
    listPipeHolders.add(pipe_holders2);
    listPipeHoldersCost.add(pipe_holders_cost2);
    listPins.add(pins2);
    listPinsCost.add(pins_cost2);
  } else {}

  int gutters3 = cornice_three.get_gutters().ceil();
  double gutters_cost3 = cornice_three.get_gutters_cost();
  int gutter_connectors3 = cornice_three.get_gutter_connectors();
  double gutter_connectors_cost3 = cornice_three.get_gutter_connectors_cost();
  int plugs3 = cornice_three.get_plugs();
  double plugs_cost3 = cornice_three.get_plugs_cost();
  int gutter_holders3 = cornice_three.get_gutter_holders();
  double gutter_holder_cost3 = cornice_three.get_gutter_holders_cost();
  int gutter_angles3 = cornice_three.get_gutter_angles();
  double gutter_angles_cost3 = cornice_three.get_gutter_angles_cost();
  int funnels3 = cornice_three.get_funnels();
  double funnels_cost3 = cornice_three.get_funnels_cost();
  int elbows3 = cornice_three.get_elbows();
  double elbows_cost3 = cornice_three.get_elbows_cost();
  int bigs_pipes3 = cornice_three.get_bigs_pipes();
  double bigs_pipes_cost3 = cornice_three.get_bigs_pipes_cost();
  int pipe_connect3 = cornice_three.get_pipe_connectors();
  double pipe_connect_cost3 = cornice_three.get_pipe_connectors_cost();
  int small_pipes3 = cornice_three.get_small_pipes();
  double small_pipes_cost3 = cornice_three.get_small_pipes_cost();
  int tips3 = cornice_three.get_tips();
  double tips_cost3 = cornice_three.get_tips_cost();
  int pipe_holders3 = cornice_three.get_pipe_holders();
  double pipe_holders_cost3 = cornice_three.get_pipe_holders_cost();
  int pins3 = cornice_three.get_pins();
  double pins_cost3 = cornice_three.get_pins_cost();

  if (cornice_three.cornice_length > 0.0) {
    print('''
${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):       ${gutters3} шт = ${gutters_cost3.toStringAsFixed(2)} руб
Соединитель желоба: $gutter_connectors3 шт = ${gutter_connectors_cost3.toStringAsFixed(2)} руб''');
    if (plugs3 == 0) {
    } else {
      print(
          '''Заглушка желоба:    $plugs3 шт = ${plugs_cost3.toStringAsFixed(2)} руб''');
      listPlugs.add(plugs3);
      listPlugsCost.add(plugs_cost3);
    }
    print(
        '''Держатель желоба:   $gutter_holders3 шт = ${gutter_holder_cost3.toStringAsFixed(2)} руб''');
    listGutters.add(gutters3);
    listGuttersCost.add(gutters_cost3);
    listGutterConnect.add(gutter_connectors3);
    listGutterConnectCost.add(gutter_connectors_cost3);
    listGutterHolders.add(gutter_holders3);
    listGutterHoldersCost.add(gutter_holder_cost3);
    listGutterAngles.add(gutter_angles3);
    listGutterAnglesCost.add(gutter_angles_cost3);
  } else {}

  if (cornice_three.num_downpipe > 0) {
    print('''
Воронка:            $funnels3 шт = ${funnels_cost3.toStringAsFixed(2)} руб
Колено:             $elbows3 шт = ${elbows_cost3.toStringAsFixed(2)} руб
Труб (3м):          ${bigs_pipes3} шт = ${bigs_pipes_cost3.toStringAsFixed(2)} руб''');
    if (pipe_connect3 == 0) {
    } else {
      print(
          '''Соединитель трубы:  $pipe_connect3 шт = ${pipe_connect_cost3.toStringAsFixed(2)} руб''');
      listPipeConnect.add(pipe_connect3);
      listPipeConnectCost.add(pipe_connect_cost3);
    }
    print('''
Труб (1м):          ${small_pipes3} шт = ${small_pipes_cost3.toStringAsFixed(2)} руб
Отмёт:              ${tips3} шт = ${tips_cost3.toStringAsFixed(2)} руб
Держатель трубы:    ${pipe_holders3} шт = ${pipe_holders_cost3.toStringAsFixed(2)} руб
Штырь:              ${pins3} шт = ${pins_cost3.toStringAsFixed(2)} руб
''');
    listFunnels.add(funnels3);
    listFunnelsCost.add(funnels_cost3);
    listElbows.add(elbows3);
    listElbowsCost.add(elbows_cost3);
    listBigsPipes.add(bigs_pipes3);
    listBigsPipesCost.add(bigs_pipes_cost3);
    listSmallPipes.add(small_pipes3);
    listSmallPipesCost.add(small_pipes_cost3);
    listTips.add(tips3);
    listTipsCost.add(tips_cost3);
    listPipeHolders.add(pipe_holders3);
    listPipeHoldersCost.add(pipe_holders_cost3);
    listPins.add(pins3);
    listPinsCost.add(pins_cost3);
  } else {}

  int gutters4 = cornice_four.get_gutters().round();
  double gutters_cost4 = cornice_four.get_gutters_cost();
  int gutter_connectors4 = cornice_four.get_gutter_connectors();
  double gutter_connectors_cost4 = cornice_four.get_gutter_connectors_cost();
  int plugs4 = cornice_four.get_plugs();
  double plugs_cost4 = cornice_four.get_plugs_cost();
  int gutter_holders4 = cornice_four.get_gutter_holders();
  double gutter_holder_cost4 = cornice_four.get_gutter_holders_cost();
  int gutter_angles4 = cornice_four.get_gutter_angles();
  double gutter_angles_cost4 = cornice_four.get_gutter_angles_cost();
  int funnels4 = cornice_four.get_funnels();
  double funnels_cost4 = cornice_four.get_funnels_cost();
  int elbows4 = cornice_four.get_elbows();
  double elbows_cost4 = cornice_four.get_elbows_cost();
  int bigs_pipes4 = cornice_four.get_bigs_pipes();
  double bigs_pipes_cost4 = cornice_four.get_bigs_pipes_cost();
  int pipe_connect4 = cornice_four.get_pipe_connectors();
  double pipe_connect_cost4 = cornice_four.get_pipe_connectors_cost();
  int small_pipes4 = cornice_four.get_small_pipes();
  double small_pipes_cost4 = cornice_four.get_small_pipes_cost();
  int tips4 = cornice_four.get_tips();
  double tips_cost4 = cornice_four.get_tips_cost();
  int pipe_holders4 = cornice_four.get_pipe_holders();
  double pipe_holders_cost4 = cornice_four.get_pipe_holders_cost();
  int pins4 = cornice_four.get_pins();
  double pins_cost4 = cornice_four.get_pins_cost();

  if (cornice_four.cornice_length > 0.0) {
    print('''
${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):       ${gutters4} шт = ${gutters_cost4.toStringAsFixed(2)} руб
Соединитель желоба: $gutter_connectors4 шт = ${gutter_connectors_cost4.toStringAsFixed(2)} руб''');
    if (plugs4 == 0) {
    } else {
      print(
          '''Заглушка желоба:    $plugs4 шт = ${plugs_cost4.toStringAsFixed(2)} руб''');
      listPlugs.add(plugs4);
      listPlugsCost.add(plugs_cost4);
    }
    print(
        '''Держатель желоба:   $gutter_holders4 шт = ${gutter_holder_cost4.toStringAsFixed(2)} руб''');
    listGutters.add(gutters4);
    listGuttersCost.add(gutters_cost4);
    listGutterConnect.add(gutter_connectors4);
    listGutterConnectCost.add(gutter_connectors_cost4);
    listGutterHolders.add(gutter_holders4);
    listGutterHoldersCost.add(gutter_holder_cost4);
    listGutterAngles.add(gutter_angles4);
    listGutterAnglesCost.add(gutter_angles_cost4);
  } else {}

  if (cornice_four.num_downpipe > 0) {
    print('''
Воронка:            $funnels4 шт = ${funnels_cost4.toStringAsFixed(2)} руб
Колено:             $elbows4 шт = ${elbows_cost4.toStringAsFixed(2)} руб
Труб (3м):          ${bigs_pipes4} шт = ${bigs_pipes_cost4.toStringAsFixed(2)} руб''');
    if (pipe_connect4 == 0) {
    } else {
      print(
          '''Соединитель трубы:  $pipe_connect4 шт = ${pipe_connect_cost4.toStringAsFixed(2)} руб''');
      listPipeConnect.add(pipe_connect4);
      listPipeConnectCost.add(pipe_connect_cost4);
    }
    print('''
Труб (1м):          ${small_pipes4} шт = ${small_pipes_cost4.toStringAsFixed(2)} руб
Отмёт:              ${tips4} шт = ${tips_cost4.toStringAsFixed(2)} руб
Держатель трубы:    ${pipe_holders4} шт = ${pipe_holders_cost4.toStringAsFixed(2)} руб
Штырь:              ${pins4} шт = ${pins_cost4.toStringAsFixed(2)} руб
''');
    listFunnels.add(funnels4);
    listFunnelsCost.add(funnels_cost4);
    listElbows.add(elbows4);
    listElbowsCost.add(elbows_cost4);
    listBigsPipes.add(bigs_pipes4);
    listBigsPipesCost.add(bigs_pipes_cost4);
    listSmallPipes.add(small_pipes4);
    listSmallPipesCost.add(small_pipes_cost4);
    listTips.add(tips4);
    listTipsCost.add(tips_cost4);
    listPipeHolders.add(pipe_holders4);
    listPipeHoldersCost.add(pipe_holders_cost4);
    listPins.add(pins4);
    listPinsCost.add(pins_cost4);
  } else {}

  int gutters5 = cornice_five.get_gutters().ceil();
  double gutters_cost5 = cornice_five.get_gutters_cost();
  int gutter_connectors5 = cornice_five.get_gutter_connectors();
  double gutter_connectors_cost5 = cornice_five.get_gutter_connectors_cost();
  int plugs5 = cornice_five.get_plugs();
  double plugs_cost5 = cornice_five.get_plugs_cost();
  int gutter_holders5 = cornice_five.get_gutter_holders();
  double gutter_holder_cost5 = cornice_five.get_gutter_holders_cost();
  int gutter_angles5 = cornice_five.get_gutter_angles();
  double gutter_angles_cost5 = cornice_five.get_gutter_angles_cost();
  int funnels5 = cornice_five.get_funnels();
  double funnels_cost5 = cornice_five.get_funnels_cost();
  int elbows5 = cornice_five.get_elbows();
  double elbows_cost5 = cornice_five.get_elbows_cost();
  int bigs_pipes5 = cornice_five.get_bigs_pipes();
  double bigs_pipes_cost5 = cornice_five.get_bigs_pipes_cost();
  int pipe_connect5 = cornice_five.get_pipe_connectors();
  double pipe_connect_cost5 = cornice_five.get_pipe_connectors_cost();
  int small_pipes5 = cornice_five.get_small_pipes();
  double small_pipes_cost5 = cornice_five.get_small_pipes_cost();
  int tips5 = cornice_five.get_tips();
  double tips_cost5 = cornice_five.get_tips_cost();
  int pipe_holders5 = cornice_five.get_pipe_holders();
  double pipe_holders_cost5 = cornice_five.get_pipe_holders_cost();
  int pins5 = cornice_five.get_pins();
  double pins_cost5 = cornice_five.get_pins_cost();

  if (cornice_five.cornice_length > 0.0) {
    print('''
${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):       ${gutters5} шт = ${gutters_cost5.toStringAsFixed(2)} руб
Соединитель желоба: $gutter_connectors5 шт = ${gutter_connectors_cost5.toStringAsFixed(2)} руб''');
    if (plugs5 == 0) {
    } else {
      print(
          '''Заглушка желоба:    $plugs5 шт = ${plugs_cost5.toStringAsFixed(2)} руб''');
      listPlugs.add(plugs5);
      listPlugsCost.add(plugs_cost5);
    }
    print(
        '''Держатель желоба:   $gutter_holders5 шт = ${gutter_holder_cost5.toStringAsFixed(2)} руб''');
    listGutters.add(gutters5);
    listGuttersCost.add(gutters_cost5);
    listGutterConnect.add(gutter_connectors5);
    listGutterConnectCost.add(gutter_connectors_cost5);
    listGutterHolders.add(gutter_holders5);
    listGutterHoldersCost.add(gutter_holder_cost5);
    listGutterAngles.add(gutter_angles5);
    listGutterAnglesCost.add(gutter_angles_cost5);
  } else {}

  if (cornice_five.num_downpipe > 0) {
    print('''
Воронка:            $funnels5 шт = ${funnels_cost5.toStringAsFixed(2)} руб
Колено:             $elbows5 шт = ${elbows_cost5.toStringAsFixed(2)} руб
Труб (3м):          ${bigs_pipes5} шт = ${bigs_pipes_cost5.toStringAsFixed(2)} руб''');
    if (pipe_connect5 == 0) {
    } else {
      print(
          '''Соединитель трубы:  $pipe_connect5 шт = ${pipe_connect_cost5.toStringAsFixed(2)} руб''');
      listPipeConnect.add(pipe_connect5);
      listPipeConnectCost.add(pipe_connect_cost5);
    }
    print('''
Труб (1м):          ${small_pipes5} шт = ${small_pipes_cost5.toStringAsFixed(2)} руб
Отмёт:              ${tips5} шт = ${tips_cost5.toStringAsFixed(2)} руб
Держатель трубы:    ${pipe_holders5} шт = ${pipe_holders_cost5.toStringAsFixed(2)} руб
Штырь:              ${pins5} шт = ${pins_cost5.toStringAsFixed(2)} руб
''');
    listFunnels.add(funnels5);
    listFunnelsCost.add(funnels_cost5);
    listElbows.add(elbows5);
    listElbowsCost.add(elbows_cost5);
    listBigsPipes.add(bigs_pipes5);
    listBigsPipesCost.add(bigs_pipes_cost5);
    listSmallPipes.add(small_pipes5);
    listSmallPipesCost.add(small_pipes_cost5);
    listTips.add(tips5);
    listTipsCost.add(tips_cost5);
    listPipeHolders.add(pipe_holders5);
    listPipeHoldersCost.add(pipe_holders_cost5);
    listPins.add(pins5);
    listPinsCost.add(pins_cost5);
  } else {}

  int gutters6 = cornice_six.get_gutters().round();
  double gutters_cost6 = cornice_six.get_gutters_cost();
  int gutter_connectors6 = cornice_six.get_gutter_connectors();
  double gutter_connectors_cost6 = cornice_six.get_gutter_connectors_cost();
  int plugs6 = cornice_six.get_plugs();
  double plugs_cost6 = cornice_six.get_plugs_cost();
  int gutter_holders6 = cornice_six.get_gutter_holders();
  double gutter_holder_cost6 = cornice_six.get_gutter_holders_cost();
  int gutter_angles6 = cornice_six.get_gutter_angles();
  double gutter_angles_cost6 = cornice_six.get_gutter_angles_cost();
  int funnels6 = cornice_six.get_funnels();
  double funnels_cost6 = cornice_six.get_funnels_cost();
  int elbows6 = cornice_six.get_elbows();
  double elbows_cost6 = cornice_six.get_elbows_cost();
  int bigs_pipes6 = cornice_six.get_bigs_pipes();
  double bigs_pipes_cost6 = cornice_six.get_bigs_pipes_cost();
  int pipe_connect6 = cornice_six.get_pipe_connectors();
  double pipe_connect_cost6 = cornice_six.get_pipe_connectors_cost();
  int small_pipes6 = cornice_six.get_small_pipes();
  double small_pipes_cost6 = cornice_six.get_small_pipes_cost();
  int tips6 = cornice_six.get_tips();
  double tips_cost6 = cornice_six.get_tips_cost();
  int pipe_holders6 = cornice_six.get_pipe_holders();
  double pipe_holders_cost6 = cornice_six.get_pipe_holders_cost();
  int pins6 = cornice_six.get_pins();
  double pins_cost6 = cornice_six.get_pins_cost();

  if (cornice_six.cornice_length > 0.0) {
    print('''
${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:
Желобов (3м):       ${gutters6} шт = ${gutters_cost6.toStringAsFixed(2)} руб
Соединитель желоба: $gutter_connectors6 шт = ${gutter_connectors_cost6.toStringAsFixed(2)} руб''');
    if (plugs6 == 0) {
    } else {
      print(
          '''Заглушка желоба:    $plugs6 шт = ${plugs_cost6.toStringAsFixed(2)} руб''');
      listPlugs.add(plugs6);
      listPlugsCost.add(plugs_cost6);
    }
    print(
        '''Держатель желоба:   $gutter_holders6 шт = ${gutter_holder_cost6.toStringAsFixed(2)} руб''');
    listGutters.add(gutters6);
    listGuttersCost.add(gutters_cost6);
    listGutterConnect.add(gutter_connectors6);
    listGutterConnectCost.add(gutter_connectors_cost6);
    listGutterHolders.add(gutter_holders6);
    listGutterHoldersCost.add(gutter_holder_cost6);
    listGutterAngles.add(gutter_angles6);
    listGutterAnglesCost.add(gutter_angles_cost6);
  } else {}

  if (cornice_six.num_downpipe > 0) {
    print('''
Воронка:            $funnels6 шт = ${funnels_cost6.toStringAsFixed(2)} руб
Колено:             $elbows6 шт = ${elbows_cost6.toStringAsFixed(2)} руб
Труб (3м):          ${bigs_pipes6} шт = ${bigs_pipes_cost6.toStringAsFixed(2)} руб''');
    if (pipe_connect6 == 0) {
    } else {
      print(
          '''Соединитель трубы:  $pipe_connect6 шт = ${pipe_connect_cost6.toStringAsFixed(2)} руб''');
      listPipeConnect.add(pipe_connect6);
      listPipeConnectCost.add(pipe_connect_cost6);
    }
    print('''
Труб (1м):          ${small_pipes6} шт = ${small_pipes_cost6.toStringAsFixed(2)} руб
Отмёт:              ${tips6} шт = ${tips_cost6.toStringAsFixed(2)} руб
Держатель трубы:    ${pipe_holders6} шт = ${pipe_holders_cost6.toStringAsFixed(2)} руб
Штырь:              ${pins6} шт = ${pins_cost6.toStringAsFixed(2)} руб
''');
    listFunnels.add(funnels6);
    listFunnelsCost.add(funnels_cost6);
    listElbows.add(elbows6);
    listElbowsCost.add(elbows_cost6);
    listBigsPipes.add(bigs_pipes6);
    listBigsPipesCost.add(bigs_pipes_cost6);
    listSmallPipes.add(small_pipes6);
    listSmallPipesCost.add(small_pipes_cost6);
    listTips.add(tips6);
    listTipsCost.add(tips_cost6);
    listPipeHolders.add(pipe_holders6);
    listPipeHoldersCost.add(pipe_holders_cost6);
    listPins.add(pins6);
    listPinsCost.add(pins_cost6);
  } else {}

  print('КОЛИЧЕСТВО КАРНИЗОВ:      ${listGutters.length} шт');
  print('\nСУММАРНОЕ КОЛИЧЕСТВО ЭЛЕМЕНТОВ СО ВСЕХ КАРНИЗОВ:');
  if (sum_gutters() > 0) {
    print(
        'Желоб (L=3000мм):   ${sum_gutters()} шт = ${sum_gutters_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_gutters());
    listCosts.add(sum_gutters_cost());
  } else {}
  if (sum_gutter_connect() > 0) {
    print(
        'Соединитель желоба: ${sum_gutter_connect()} шт = ${sum_gutters_connect_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_gutter_connect());
    listCosts.add(sum_gutters_connect_cost());
  } else {}
  if (sum_plugs() > 0) {
    print(
        'Заглушка желоба:    ${sum_plugs()} шт = ${sum_plugs_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_plugs());
    listCosts.add(sum_plugs_cost());
  } else {}
  if (sum_gutter_holders() > 0) {
    print(
        'Держатель желоба:   ${sum_gutter_holders()} шт = ${sum_gutter_holders_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_gutter_holders());
    listCosts.add(sum_gutter_holders_cost());
  } else {}
  if (sum_gutter_angles() > 0) {
    print(
        'Угол желоба:        ${sum_gutter_angles()} шт = ${sum_gutter_angles_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_gutter_angles());
    listCosts.add(sum_gutter_angles_cost());
  } else {}
  if (sum_funnels() > 0) {
    print(
        'Воронка:            ${sum_funnels()} шт = ${sum_funnels_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_funnels());
    listCosts.add(sum_funnels_cost());
  } else {}
  if (sum_elbows() > 0) {
    print(
        'Колено:             ${sum_elbows()} шт = ${sum_elbows_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_elbows());
    listCosts.add(sum_elbows_cost());
  } else {}
  if (sum_bigs_pipes() > 0) {
    print(
        'Труба (L=3000мм):   ${sum_bigs_pipes()} шт = ${sum_bigs_pipes_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_bigs_pipes());
    listCosts.add(sum_bigs_pipes_cost());
  } else {}
  if (sum_pipe_connect() > 0) {
    print(
        'Соединитель трубы:  ${sum_pipe_connect()} шт = ${sum_pipe_connect_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_pipe_connect());
    listCosts.add(sum_pipe_connect_cost());
  } else {}
  if (sum_small_pipes() > 0) {
    print(
        'Труба (L=1000мм):   ${sum_small_pipes()} шт = ${sum_small_pipes_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_small_pipes());
    listCosts.add(sum_small_pipes_cost());
  } else {}
  if (sum_tips() > 0) {
    print(
        'Отмёт:              ${sum_tips()} шт = ${sum_tips_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_tips());
    listCosts.add(sum_tips_cost());
  } else {}
  if (sum_pipe_holders() > 0) {
    print(
        'Держатель трубы:    ${sum_pipe_holders()} шт = ${sum_pipe_holders_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_pipe_holders());
    listCosts.add(sum_pipe_holders_cost());
  }
  if (sum_pins() > 0) {
    print(
        'Штырь:              ${sum_pins()} шт = ${sum_pins_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_pins());
    listCosts.add(sum_pins_cost());
  } else {}
  print(
      '\nИТОГО:              ${sum_elements()} шт = ${sum_costs().toStringAsFixed(2)} руб');
}
