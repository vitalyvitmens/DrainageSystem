import 'Drainage/class_drainage_cornice.dart';
import 'Hedge/class_fence.dart';
import 'Hedge/class_hedge.dart';
import 'Hedge/class_profileC8.dart';
import 'Hedge/class_profileMP20.dart';
import 'Hemming/class_cornice_overhang.dart';
import 'Hemming/class_end_overhang.dart';

void main() {
  final C8 = ProfileC8(0, 1.5, Color.RAL8017, 0.45);
  final C8_two = ProfileC8(0, 1.5, Color.RAL8017, 0.35);
  final C8_three = ProfileC8(0, 1.7, Color.RAL7024MAT, 0.45);
  final C8_four = ProfileC8(0, 2.0, Color.Zinc, 0.45);

  C8.get_result_hedge();
  C8_two.get_result_hedge();
  C8_three.get_result_hedge();
  C8_four.get_result_hedge();

  final MP20 = ProfileMP20(0, 1.5, Color.RAL8017, 0.45);
  final MP20_two = ProfileMP20(0, 1.5, Color.RAL8017, 0.50);
  final MP20_three = ProfileMP20(0, 1.7, Color.RAL8017MAT, 0.50);
  final MP20_four = ProfileMP20(0, 2.0, Color.Zinc, 0.50);

  MP20.get_result_hedge();
  MP20_two.get_result_hedge();
  MP20_three.get_result_hedge();
  MP20_four.get_result_hedge();

  final fence = Fence(0, 1.5, 0.040, Color.RAL8017_RAL8017, 0.40);
  final fence_two = Fence(0, 1.6, 0.040, Color.RAL3005_RAL3005, 0.40);
  final fence_three = Fence(0, 1.7, 0.040, Color.RAL9003_RAL9003, 0.40);
  final fence_four = Fence(0, 2.0, 0.040, Color.RAL7024MAT_RAL7024MAT, 0.40);

  fence.get_result_hedge();
  fence_two.get_result_hedge();
  fence_three.get_result_hedge();
  fence_four.get_result_hedge();

  final cornice_one = DrainageCornice(13.0, 3.0, 1);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_one (первый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №1 в метрах)
  - double downpipe_height (высота от карниза №1 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №1)
  */
  final cornice_two = DrainageCornice(13.0, 3.0, 1);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_two (второй
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №2 в метрах)
  - double downpipe_height (высота от карниза №2 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №2)
  */
  final cornice_three = DrainageCornice(6.0, 3.0, 1);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_three (третий
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №3 в метрах)
  - double downpipe_height (высота от карниза №3 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №3)
  */
  final cornice_four = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_four (четвёртый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №4 в метрах)
  - double downpipe_height (высота от карниза №4 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №4)
  */
  final cornice_five = DrainageCornice(0.0, 10.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_five (пятый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №5 в метрах)
  - double downpipe_height (высота от карниза №5 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №5)
  */
  final cornice_six = DrainageCornice(0.0, 3.0, 0);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_six (шестой
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №6 в метрах)
  - double downpipe_height (высота от карниза №6 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №6)
  */

  cornice_one.get_result_drainage_cornice();
  cornice_two.get_result_drainage_cornice();
  cornice_three.get_result_drainage_cornice();
  cornice_four.get_result_drainage_cornice();
  cornice_five.get_result_drainage_cornice();
  cornice_six.get_result_drainage_cornice();
  DrainageCornice.get_total_result_drainages_cornices();

  final hemming_cornice_one =
      CorniceOverhang(0.0, 0.85, Color.RAL8017, 0.40, 0.27);
  final hemming_cornice_two =
      CorniceOverhang(0.0, 0.60, Color.RAL8017, 0.40, 0.25);

  final hemming_end_one = EndOverhang(0.0, 0.5, Color.RAL8017, 0.5, 0.070);
  final hemming_end_two = EndOverhang(0.0, 0.5, Color.RAL8017, 0.5, 0.070);

  hemming_cornice_one.get_result_hemming();
  hemming_cornice_two.get_result_hemming();
  hemming_end_one.get_result_hemming();
  hemming_end_two.get_result_hemming();
  CorniceOverhang.get_total_result_cornice_overhang();
  EndOverhang.get_total_result_end_overhang();

  // print('${listNumSheetsC8EndOverhang[0]}');
  // print('${listNumSheetsC8EndOverhang[1]}');
  // print('${listAreaC8EndOverhang[0]}');
  // print('${listAreaC8EndOverhang[1]}');
  // print('${listlengthLplanksEndOverhang[0]}');
  // print('${listlengthLplanksEndOverhang[1]}');
  // print('${listScrewsEndOverhang[0]}');
  // print('${listScrewsEndOverhang[1]}');
}
