import 'drainage_cornice.dart';
import 'methods_calculating_elements_drainage_system.dart';

double gutter_cost = 21.12;
double gutter_connector_cost = 8.28;
double plug_cost = 3.96;
double gutter_holder_cost = 2.94;
double gutter_angle_cost = 13.62;
double funnel_cost = 14.82;
double elbow_cost = 9.36;
double big_pipe_cost = 25.62;
double pipe_connector_cost = 4.92;
double small_pipe_cost = 10.02;
double tip_cost = 8.88;
double pipe_holder_cost = 3.84;
double pin_cost = 5.76;

// int sum_gutters() {
//   if (listGutters.isEmpty) {
//     return 0;
//   }
//   return listGutters.reduce((value, element) => value += element);
// }

void main() {
  var cornice_one = DrainageCornice(10.0, 10.0, 2);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_one (первый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №1 в метрах)
  - double downpipe_height (высота от карниза №1 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №1)
  */
  int gutters1 = cornice_one.get_gutters().ceil();
  int gutter_connectors1 = cornice_one.get_gutter_connectors();
  int plugs1 = cornice_one.get_plugs();
  int gutter_holders1 = cornice_one.get_gutter_holders();
  int gutter_angles1 = cornice_one.get_gutter_angles().ceil();
  int funnels1 = cornice_one.get_funnels();
  int elbows1 = cornice_one.get_elbows();
  int bigs_pipes1 = cornice_one.get_bigs_pipes().ceil();
  int pipe_connectors1 = cornice_one.get_pipe_connectors();
  int small_pipes1 = cornice_one.get_small_pipes();
  int tips1 = cornice_one.get_tips();
  int pipe_holders1 = cornice_one.get_pipe_holders();
  int pins1 = cornice_one.get_pins();

  if (cornice_one.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print(
        'Желобов (3м):             ${gutters1} шт = ${(gutters1 * gutter_cost).toStringAsFixed(2)} руб');
    listGutters.add(gutters1);
    print(
        'Соединитель желоба:       $gutter_connectors1 шт = ${(gutter_connectors1 * gutter_connector_cost).toStringAsFixed(2)} руб');
    listGutterConnectors.add(gutter_connectors1);
    if (plugs1 == 0) {
    } else {
      print(
          'Заглушка желоба:          $plugs1 шт = ${(plugs1 * plug_cost).toStringAsFixed(2)} руб');
    }
    listPlugs.add(plugs1);
    print(
        'Держатель желоба:         $gutter_holders1 шт = ${(gutter_holders1 * gutter_holder_cost).toStringAsFixed(2)} руб');
    listGutterHolders.add(gutter_holders1);
    listGutterAngles.add(gutter_angles1);
    print(
        'Воронка:                  $funnels1 шт = ${(funnels1 * funnel_cost).toStringAsFixed(2)} руб');
    listFunnels.add(funnels1);
    print(
        'Колено:                   $elbows1 шт = ${(elbows1 * elbow_cost).toStringAsFixed(2)} руб');
    listElbows.add(elbows1);
    print(
        'Труб (3м):                ${bigs_pipes1} шт = ${(bigs_pipes1 * big_pipe_cost).toStringAsFixed(2)} руб');
    listBigsPipes.add(bigs_pipes1);
    print(
        'Соединитель трубы:        $pipe_connectors1 шт = ${(pipe_connectors1 * pipe_connector_cost).toStringAsFixed(2)} руб');
    listPipeConnectors.add(pipe_connectors1);
    print(
        'Труб (1м):                ${small_pipes1} шт = ${(small_pipes1 * small_pipe_cost).toStringAsFixed(2)} руб');
    listSmallPipes.add(small_pipes1);
    print(
        'Отмёт:                    ${tips1} шт = ${(tips1 * tip_cost).toStringAsFixed(2)} руб');
    listTips.add(tips1);
    print(
        'Держатель трубы:          ${pipe_holders1} шт = ${(pipe_holders1 * pipe_holder_cost).toStringAsFixed(2)} руб');
    listPipeHolders.add(pipe_holders1);
    print(
        'Штырь (держателя трубы):  ${pins1} шт = ${(pins1 * pin_cost).toStringAsFixed(2)} руб');
    listPins.add(pins1);
    print('');
  } else {}

  var cornice_two = DrainageCornice(15.0, 5.0, 3);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_two (второй
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №2 в метрах)
  - double downpipe_height (высота от карниза №2 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №2)
  */
  int gutters2 = cornice_two.get_gutters().round();
  int gutter_connectors2 = cornice_two.get_gutter_connectors();
  int plugs2 = cornice_two.get_plugs();
  int gutter_holders2 = cornice_two.get_gutter_holders();
  int gutter_angles2 = cornice_two.get_gutter_angles().ceil();
  int funnels2 = cornice_two.get_funnels();
  int elbows2 = cornice_two.get_elbows();
  int bigs_pipes2 = cornice_two.get_bigs_pipes().ceil();
  int pipe_connectors2 = cornice_two.get_pipe_connectors();
  int small_pipes2 = cornice_two.get_small_pipes();
  int tips2 = cornice_two.get_tips();
  int pipe_holders2 = cornice_two.get_pipe_holders();
  int pins2 = cornice_two.get_pins();

  if (cornice_two.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print(
        'Желобов (3м):             ${gutters2} шт = ${(gutters2 * gutter_cost).toStringAsFixed(2)} руб');
    listGutters.add(gutters2);
    print(
        'Соединитель желоба:       $gutter_connectors2 шт = ${(gutter_connectors2 * gutter_connector_cost).toStringAsFixed(2)} руб');
    listGutterConnectors.add(gutter_connectors2);
    if (plugs2 == 0) {
    } else {
      print(
          'Заглушка желоба:          $plugs2 шт = ${(plugs2 * plug_cost).toStringAsFixed(2)} руб');
    }
    listPlugs.add(plugs2);
    print(
        'Держатель желоба:         $gutter_holders2 шт = ${(gutter_holders2 * gutter_holder_cost).toStringAsFixed(2)} руб');
    listGutterHolders.add(gutter_holders2);
    listGutterAngles.add(gutter_angles2);
    print(
        'Воронка:                  $funnels2 шт = ${(funnels2 * funnel_cost).toStringAsFixed(2)} руб');
    listFunnels.add(funnels2);
    print(
        'Колено:                   $elbows2 шт = ${(elbows2 * elbow_cost).toStringAsFixed(2)} руб');
    listElbows.add(elbows2);
    print(
        'Труб (3м):                ${bigs_pipes2} шт = ${(bigs_pipes2 * big_pipe_cost).toStringAsFixed(2)} руб');
    listBigsPipes.add(bigs_pipes2);
    print(
        'Соединитель трубы:        $pipe_connectors2 шт = ${(pipe_connectors2 * pipe_connector_cost).toStringAsFixed(2)} руб');
    listPipeConnectors.add(pipe_connectors2);
    print(
        'Труб (1м):                ${small_pipes2} шт = ${(small_pipes2 * small_pipe_cost).toStringAsFixed(2)} руб');
    listSmallPipes.add(small_pipes2);
    print(
        'Отмёт:                    ${tips2} шт = ${(tips2 * tip_cost).toStringAsFixed(2)} руб');
    listTips.add(tips2);
    print(
        'Держатель трубы:          ${pipe_holders2} шт = ${(pipe_holders2 * pipe_holder_cost).toStringAsFixed(2)} руб');
    listPipeHolders.add(pipe_holders2);
    print(
        'Штырь (держателя трубы):  ${pins2} шт = ${(pins2 * pin_cost).toStringAsFixed(2)} руб');
    listPins.add(pins2);
    print('');
  } else {}

  var cornice_three = DrainageCornice(20.0, 7.0, 4);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_three (третий
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №3 в метрах)
  - double downpipe_height (высота от карниза №3 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №3)
  */
  int gutters3 = cornice_three.get_gutters().ceil();
  int gutter_connectors3 = cornice_three.get_gutter_connectors();
  int plugs3 = cornice_three.get_plugs();
  int gutter_holders3 = cornice_three.get_gutter_holders();
  int gutter_angles3 = cornice_three.get_gutter_angles().ceil();
  int funnels3 = cornice_three.get_funnels();
  int elbows3 = cornice_three.get_elbows();
  int bigs_pipes3 = cornice_three.get_bigs_pipes().ceil();
  int pipe_connectors3 = cornice_three.get_pipe_connectors();
  int small_pipes3 = cornice_three.get_small_pipes();
  int tips3 = cornice_three.get_tips();
  int pipe_holders3 = cornice_three.get_pipe_holders();
  int pins3 = cornice_three.get_pins();

  if (cornice_three.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print(
        'Желобов (3м):             ${gutters3} шт = ${(gutters3 * gutter_cost).toStringAsFixed(2)} руб');
    listGutters.add(gutters3);
    print(
        'Соединитель желоба:       $gutter_connectors3 шт = ${(gutter_connectors3 * gutter_connector_cost).toStringAsFixed(2)} руб');
    listGutterConnectors.add(gutter_connectors3);
    if (plugs3 == 0) {
    } else {
      print(
          'Заглушка желоба:          $plugs3 шт = ${(plugs3 * plug_cost).toStringAsFixed(2)} руб');
    }
    listPlugs.add(plugs3);
    print(
        'Держатель желоба:         $gutter_holders3 шт = ${(gutter_holders3 * gutter_holder_cost).toStringAsFixed(2)} руб');
    listGutterHolders.add(gutter_holders3);
    listGutterAngles.add(gutter_angles3);
    print(
        'Воронка:                  $funnels3 шт = ${(funnels3 * funnel_cost).toStringAsFixed(2)} руб');
    listFunnels.add(funnels3);
    print(
        'Колено:                   $elbows3 шт = ${(elbows3 * elbow_cost).toStringAsFixed(2)} руб');
    listElbows.add(elbows3);
    print(
        'Труб (3м):                ${bigs_pipes3} шт = ${(bigs_pipes3 * big_pipe_cost).toStringAsFixed(2)} руб');
    listBigsPipes.add(bigs_pipes3);
    print(
        'Соединитель трубы:        $pipe_connectors3 шт = ${(pipe_connectors3 * pipe_connector_cost).toStringAsFixed(2)} руб');
    listPipeConnectors.add(pipe_connectors3);
    print(
        'Труб (1м):                ${small_pipes3} шт = ${(small_pipes3 * small_pipe_cost).toStringAsFixed(2)} руб');
    listSmallPipes.add(small_pipes3);
    print(
        'Отмёт:                    ${tips3} шт = ${(tips3 * tip_cost).toStringAsFixed(2)} руб');
    listTips.add(tips3);
    print(
        'Держатель трубы:          ${pipe_holders3} шт = ${(pipe_holders3 * pipe_holder_cost).toStringAsFixed(2)} руб');
    listPipeHolders.add(pipe_holders3);
    print(
        'Штырь (держателя трубы):  ${pins3} шт = ${(pins3 * pin_cost).toStringAsFixed(2)} руб');
    listPins.add(pins3);
    print('');
  } else {}

  var cornice_four = DrainageCornice(25.0, 9.0, 7);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_four (четвёртый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №4 в метрах)
  - double downpipe_height (высота от карниза №4 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №4)
  */
  int gutters4 = cornice_four.get_gutters().round();
  int gutter_connectors4 = cornice_four.get_gutter_connectors();
  int plugs4 = cornice_four.get_plugs();
  int gutter_holders4 = cornice_four.get_gutter_holders();
  int gutter_angles4 = cornice_four.get_gutter_angles().ceil();
  int funnels4 = cornice_four.get_funnels();
  int elbows4 = cornice_four.get_elbows();
  int bigs_pipes4 = cornice_four.get_bigs_pipes().ceil();
  int pipe_connectors4 = cornice_four.get_pipe_connectors();
  int small_pipes4 = cornice_four.get_small_pipes();
  int tips4 = cornice_four.get_tips();
  int pipe_holders4 = cornice_four.get_pipe_holders();
  int pins4 = cornice_four.get_pins();

  if (cornice_four.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print(
        'Желобов (3м):             ${gutters4} шт = ${(gutters4 * gutter_cost).toStringAsFixed(2)} руб');
    listGutters.add(gutters4);
    print(
        'Соединитель желоба:       $gutter_connectors4 шт = ${(gutter_connectors4 * gutter_connector_cost).toStringAsFixed(2)} руб');
    listGutterConnectors.add(gutter_connectors4);
    if (plugs4 == 0) {
    } else {
      print(
          'Заглушка желоба:          $plugs4 шт = ${(plugs4 * plug_cost).toStringAsFixed(2)} руб');
    }
    listPlugs.add(plugs4);
    print(
        'Держатель желоба:         $gutter_holders4 шт = ${(gutter_holders4 * gutter_holder_cost).toStringAsFixed(2)} руб');
    listGutterHolders.add(gutter_holders4);
    listGutterAngles.add(gutter_angles4);
    print(
        'Воронка:                  $funnels4 шт = ${(funnels4 * funnel_cost).toStringAsFixed(2)} руб');
    listFunnels.add(funnels4);
    print(
        'Колено:                   $elbows4 шт = ${(elbows4 * elbow_cost).toStringAsFixed(2)} руб');
    listElbows.add(elbows4);
    print(
        'Труб (3м):                ${bigs_pipes4} шт = ${(bigs_pipes4 * big_pipe_cost).toStringAsFixed(2)} руб');
    listBigsPipes.add(bigs_pipes4);
    print(
        'Соединитель трубы:        $pipe_connectors4 шт = ${(pipe_connectors4 * pipe_connector_cost).toStringAsFixed(2)} руб');
    listPipeConnectors.add(pipe_connectors4);
    print(
        'Труб (1м):                ${small_pipes4} шт = ${(small_pipes4 * small_pipe_cost).toStringAsFixed(2)} руб');
    listSmallPipes.add(small_pipes4);
    print(
        'Отмёт:                    ${tips4} шт = ${(tips4 * tip_cost).toStringAsFixed(2)} руб');
    listTips.add(tips4);
    print(
        'Держатель трубы:          ${pipe_holders4} шт = ${(pipe_holders4 * pipe_holder_cost).toStringAsFixed(2)} руб');
    listPipeHolders.add(pipe_holders4);
    print(
        'Штырь (держателя трубы):  ${pins4} шт = ${(pins4 * pin_cost).toStringAsFixed(2)} руб');
    listPins.add(pins4);
    print('');
  } else {}

  var cornice_five = DrainageCornice(30.0, 11.0, 11);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_five (пятый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №5 в метрах)
  - double downpipe_height (высота от карниза №5 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №5)
  */
  int gutters5 = cornice_five.get_gutters().ceil();
  int gutter_connectors5 = cornice_five.get_gutter_connectors();
  int plugs5 = cornice_five.get_plugs();
  int gutter_holders5 = cornice_five.get_gutter_holders();
  int gutter_angles5 = cornice_five.get_gutter_angles().ceil();
  int funnels5 = cornice_five.get_funnels();
  int elbows5 = cornice_five.get_elbows();
  int bigs_pipes5 = cornice_five.get_bigs_pipes().ceil();
  int pipe_connectors5 = cornice_five.get_pipe_connectors();
  int small_pipes5 = cornice_five.get_small_pipes();
  int tips5 = cornice_five.get_tips();
  int pipe_holders5 = cornice_five.get_pipe_holders();
  int pins5 = cornice_five.get_pins();

  if (cornice_five.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print(
        'Желобов (3м):             ${gutters5} шт = ${(gutters5 * gutter_cost).toStringAsFixed(2)} руб');
    listGutters.add(gutters5);
    print(
        'Соединитель желоба:       $gutter_connectors5 шт = ${(gutter_connectors5 * gutter_connector_cost).toStringAsFixed(2)} руб');
    listGutterConnectors.add(gutter_connectors5);
    if (plugs5 == 0) {
    } else {
      print(
          'Заглушка желоба:          $plugs5 шт = ${(plugs5 * plug_cost).toStringAsFixed(2)} руб');
    }
    listPlugs.add(plugs5);
    print(
        'Держатель желоба:         $gutter_holders5 шт = ${(gutter_holders5 * gutter_holder_cost).toStringAsFixed(2)} руб');
    listGutterHolders.add(gutter_holders5);
    listGutterAngles.add(gutter_angles5);
    print(
        'Воронка:                  $funnels5 шт = ${(funnels5 * funnel_cost).toStringAsFixed(2)} руб');
    listFunnels.add(funnels5);
    print(
        'Колено:                   $elbows5 шт = ${(elbows5 * elbow_cost).toStringAsFixed(2)} руб');
    listElbows.add(elbows5);
    print(
        'Труб (3м):                ${bigs_pipes5} шт = ${(bigs_pipes5 * big_pipe_cost).toStringAsFixed(2)} руб');
    listBigsPipes.add(bigs_pipes5);
    print(
        'Соединитель трубы:        $pipe_connectors5 шт = ${(pipe_connectors5 * pipe_connector_cost).toStringAsFixed(2)} руб');
    listPipeConnectors.add(pipe_connectors5);
    print(
        'Труб (1м):                ${small_pipes5} шт = ${(small_pipes5 * small_pipe_cost).toStringAsFixed(2)} руб');
    listSmallPipes.add(small_pipes5);
    print(
        'Отмёт:                    ${tips5} шт = ${(tips5 * tip_cost).toStringAsFixed(2)} руб');
    listTips.add(tips5);
    print(
        'Держатель трубы:          ${pipe_holders5} шт = ${(pipe_holders5 * pipe_holder_cost).toStringAsFixed(2)} руб');
    listPipeHolders.add(pipe_holders5);
    print(
        'Штырь (держателя трубы):  ${pins5} шт = ${(pins5 * pin_cost).toStringAsFixed(2)} руб');
    listPins.add(pins5);
    print('');
  } else {}

  var cornice_six = DrainageCornice(35.0, 33.5, 12);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_six (шестой
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №6 в метрах)
  - double downpipe_height (высота от карниза №6 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №6)
  */
  int gutters6 = cornice_six.get_gutters().round();
  int gutter_connectors6 = cornice_six.get_gutter_connectors();
  int plugs6 = cornice_six.get_plugs();
  int gutter_holders6 = cornice_six.get_gutter_holders();
  int gutter_angles6 = cornice_six.get_gutter_angles().ceil();
  int funnels6 = cornice_six.get_funnels();
  int elbows6 = cornice_six.get_elbows();
  int bigs_pipes6 = cornice_six.get_bigs_pipes().ceil();
  int pipe_connectors6 = cornice_six.get_pipe_connectors();
  int small_pipes6 = cornice_six.get_small_pipes();
  int tips6 = cornice_six.get_tips();
  int pipe_holders6 = cornice_six.get_pipe_holders();
  int pins6 = cornice_six.get_pins();

  if (cornice_six.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print(
        'Желобов (3м):             ${gutters6} шт = ${(gutters6 * gutter_cost).toStringAsFixed(2)} руб');
    listGutters.add(gutters6);
    print(
        'Соединитель желоба:       $gutter_connectors6 шт = ${(gutter_connectors6 * gutter_connector_cost).toStringAsFixed(2)} руб');
    listGutterConnectors.add(gutter_connectors6);
    if (plugs6 == 0) {
    } else {
      print(
          'Заглушка желоба:          $plugs6 шт = ${(plugs6 * plug_cost).toStringAsFixed(2)} руб');
    }
    listPlugs.add(plugs6);
    print(
        'Держатель желоба:         $gutter_holders6 шт = ${(gutter_holders6 * gutter_holder_cost).toStringAsFixed(2)} руб');
    listGutterHolders.add(gutter_holders6);
    listGutterAngles.add(gutter_angles6);
    print(
        'Воронка:                  $funnels6 шт = ${(funnels6 * funnel_cost).toStringAsFixed(2)} руб');
    listFunnels.add(funnels6);
    print(
        'Колено:                   $elbows6 шт = ${(elbows6 * elbow_cost).toStringAsFixed(2)} руб');
    listElbows.add(elbows6);
    print(
        'Труб (3м):                ${bigs_pipes6} шт = ${(bigs_pipes6 * big_pipe_cost).toStringAsFixed(2)} руб');
    listBigsPipes.add(bigs_pipes6);
    print(
        'Соединитель трубы:        $pipe_connectors6 шт = ${(pipe_connectors6 * pipe_connector_cost).toStringAsFixed(2)} руб');
    listPipeConnectors.add(pipe_connectors6);
    print(
        'Труб (1м):                ${small_pipes6} шт = ${(small_pipes6 * small_pipe_cost).toStringAsFixed(2)} руб');
    listSmallPipes.add(small_pipes6);
    print(
        'Отмёт:                    ${tips6} шт = ${(tips6 * tip_cost).toStringAsFixed(2)} руб');
    listTips.add(tips6);
    print(
        'Держатель трубы:          ${pipe_holders6} шт = ${(pipe_holders6 * pipe_holder_cost).toStringAsFixed(2)} руб');
    listPipeHolders.add(pipe_holders6);
    print(
        'Штырь (держателя трубы):  ${pins6} шт = ${(pins6 * pin_cost).toStringAsFixed(2)} руб');
    listPins.add(pins6);
    print('');
  } else {}

  print('КОЛИЧЕСТВО КАРНИЗОВ:      ${listGutters.length} шт');
  print('Итого желоб (3м):         ${sum_gutters()} шт');
  print('Итого соединитель желоба: ${sum_gutter_connectors()} шт');
  if (sum_plugs() == 0) {
  } else {
    print('Итого заглушка желоба:    ${sum_plugs()} шт');
  }
  print('Итого держатель желоба:   ${sum_gutter_holders()} шт');
  if (sum_gutter_angles() == 0) {
  } else {
    print('Итого угол желоба:        ${sum_gutter_angles()} шт');
  }
  print('Итого воронок:            ${sum_funnels()} шт');
  print('Итого колен:              ${sum_elbows()} шт');
  print('Итого труб (3м):          ${sum_bigs_pipes()} шт');
  print('Итого соединителей труб:  ${sum_pipe_connectors()} шт');
  print('Итого труб (1м):          ${sum_small_pipes()} шт');
  print('Итого отмёт:              ${sum_tips()} шт');
  print('Итого держатель труб:     ${sum_pipe_holders()} шт');
  print('Итого штырь:              ${sum_pins()} шт');

  // print(listPlugs.length);
  // print(listPlugs.length.runtimeType);
  // print(listPlugs.first);
  // print(listPlugs.first.runtimeType);
}
