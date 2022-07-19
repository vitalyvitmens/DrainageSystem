import 'drainage_cornice.dart';
import 'methods_calculating_elements_drainage.dart';
import 'methods_cost_calculation_elements_drainage.dart';

double gutter_price = 21.12;
double gutter_connector_price = 8.28;
double plug_price = 3.96;
double gutter_holder_price = 2.94;
double gutter_angle_price = 13.62;
double funnel_price = 14.82;
double elbow_price = 9.36;
double big_pipe_price = 25.62;
double pipe_connector_price = 4.92;
double small_pipe_price = 10.02;
double tip_price = 8.88;
double pipe_holder_price = 3.84;
double pin_price = 5.76;
//TODO: разберись с округлением до 2 цифр после запятой при расчете покарнизной стоимости элементов
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
  double gutters_cost1 = (gutters1 * gutter_price).roundToDouble();
  int gutter_connect1 = cornice_one.get_gutter_connectors();
  double gutter_connect_cost1 = (gutter_connect1 * gutter_connector_price);
  int plugs1 = cornice_one.get_plugs();
  double plug_cost1 = (plugs1 * plug_price);
  int gutter_holders1 = cornice_one.get_gutter_holders();
  double gutter_holder_cost1 = (gutter_holders1 * gutter_holder_price);
  int gutter_angles1 = cornice_one.get_gutter_angles().ceil();
  double gutter_angles_cost1 = (gutter_angles1 * gutter_angle_price);
  int funnels1 = cornice_one.get_funnels();
  double funnels_cost1 = (funnels1 * funnel_price);
  int elbows1 = cornice_one.get_elbows();
  double elbows_cost1 = (elbows1 * elbow_price);
  int bigs_pipes1 = cornice_one.get_bigs_pipes().ceil();
  double bigs_pipes_cost1 = (bigs_pipes1 * big_pipe_price);
  int pipe_connect1 = cornice_one.get_pipe_connectors();
  double pipe_connect_cost1 = (pipe_connect1 * pipe_connector_price);
  int small_pipes1 = cornice_one.get_small_pipes();
  double small_pipes_cost1 = (small_pipes1 * small_pipe_price);
  int tips1 = cornice_one.get_tips();
  double tips_cost1 = (tips1 * tip_price);
  int pipe_holders1 = cornice_one.get_pipe_holders();
  double pipe_holders_cost1 = (pipe_holders1 * pipe_holder_price);
  int pins1 = cornice_one.get_pins();
  double pins_cost1 = (pins1 * pin_price);

  if (cornice_one.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print('Желобов (3м):       ${gutters1} шт = ${gutters_cost1} руб');
    listGutters.add(gutters1);
    listGuttersCost.add(gutters_cost1);
    print(
        'Соединитель желоба: $gutter_connect1 шт = ${gutter_connect_cost1} руб');
    listGutterConnect.add(gutter_connect1);
    listGutterConnectCost.add(gutter_connect_cost1);
    if (plugs1 == 0) {
    } else {
      print('Заглушка желоба:    $plugs1 шт = ${plug_cost1} руб');
    }
    listPlugs.add(plugs1);
    listPlugsCost.add(plug_cost1);

    print(
        'Держатель желоба:   $gutter_holders1 шт = ${gutter_holder_cost1} руб');
    listGutterHolders.add(gutter_holders1);
    listGutterHoldersCost.add(gutter_holder_cost1);
    listGutterAngles.add(gutter_angles1);
    listGutterAnglesCost.add(gutter_angles_cost1);
    print('Воронка:            $funnels1 шт = ${funnels_cost1} руб');
    listFunnels.add(funnels1);
    listFunnelsCost.add(funnels_cost1);
    print('Колено:             $elbows1 шт = ${elbows_cost1} руб');
    listElbows.add(elbows1);
    listElbowsCost.add(elbows_cost1);
    print('Труб (3м):          ${bigs_pipes1} шт = ${bigs_pipes_cost1} руб');
    listBigsPipes.add(bigs_pipes1);
    listBigsPipesCost.add(bigs_pipes_cost1);
    print('Соединитель трубы:  $pipe_connect1 шт = ${pipe_connect_cost1} руб');
    listPipeConnect.add(pipe_connect1);
    listPipeConnectCost.add(pipe_connect_cost1);
    print('Труб (1м):          ${small_pipes1} шт = ${small_pipes_cost1} руб');
    listSmallPipes.add(small_pipes1);
    listSmallPipesCost.add(pipe_connect_cost1);
    print('Отмёт:              ${tips1} шт = ${tips_cost1} руб');
    listTips.add(tips1);
    listTipsCost.add(tips_cost1);
    print(
        'Держатель трубы:    ${pipe_holders1} шт = ${pipe_holders_cost1} руб');
    listPipeHolders.add(pipe_holders1);
    listPipeHoldersCost.add(pipe_holders_cost1);
    print('Штырь:              ${pins1} шт = ${pins_cost1} руб');
    listPins.add(pins1);
    listPinsCost.add(pins_cost1);
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
  double gutters_cost2 = (gutters2 * gutter_price);
  int gutter_connect2 = cornice_two.get_gutter_connectors();
  double gutter_connect_cost2 = (gutter_connect2 * gutter_connector_price);
  int plugs2 = cornice_two.get_plugs();
  double plug_cost2 = (plugs2 * plug_price);
  int gutter_holders2 = cornice_two.get_gutter_holders();
  double gutter_holder_cost2 = (gutter_holders2 * gutter_holder_price);
  int gutter_angles2 = cornice_two.get_gutter_angles().ceil();
  double gutter_angles_cost2 = (gutter_angles2 * gutter_angle_price);
  int funnels2 = cornice_two.get_funnels();
  double funnels_cost2 = (funnels2 * funnel_price);
  int elbows2 = cornice_two.get_elbows();
  double elbows_cost2 = (elbows2 * elbow_price);
  int bigs_pipes2 = cornice_two.get_bigs_pipes().ceil();
  double bigs_pipes_cost2 = (bigs_pipes2 * big_pipe_price);
  int pipe_connect2 = cornice_two.get_pipe_connectors();
  double pipe_connect_cost2 = (pipe_connect2 * pipe_connector_price);
  int small_pipes2 = cornice_two.get_small_pipes();
  double small_pipes_cost2 = (small_pipes2 * small_pipe_price);
  int tips2 = cornice_two.get_tips();
  double tips_cost2 = (tips2 * tip_price);
  int pipe_holders2 = cornice_two.get_pipe_holders();
  double pipe_holders_cost2 = (pipe_holders2 * pipe_holder_price);
  int pins2 = cornice_two.get_pins();
  double pins_cost2 = (pins2 * pin_price);

  if (cornice_two.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print('Желобов (3м):       ${gutters2} шт = ${gutters_cost2} руб');
    listGutters.add(gutters2);
    listGuttersCost.add(gutters_cost2);
    print(
        'Соединитель желоба: $gutter_connect2 шт = ${gutter_connect_cost2} руб');
    listGutterConnect.add(gutter_connect2);
    listGutterConnectCost.add(gutter_connect_cost2);
    if (plugs2 == 0) {
    } else {
      print('Заглушка желоба:    $plugs2 шт = ${plug_cost2} руб');
    }
    listPlugs.add(plugs2);
    listPlugsCost.add(plug_cost2);
    print(
        'Держатель желоба:   $gutter_holders2 шт = ${gutter_holder_cost2} руб');
    listGutterHolders.add(gutter_holders2);
    listGutterHoldersCost.add(gutter_holder_cost2);
    listGutterAngles.add(gutter_angles2);
    listGutterAnglesCost.add(gutter_angles_cost2);
    print('Воронка:            $funnels2 шт = ${funnels_cost2} руб');
    listFunnels.add(funnels2);
    listFunnelsCost.add(funnels_cost2);
    print('Колено:             $elbows2 шт = ${elbows_cost2} руб');
    listElbows.add(elbows2);
    listElbowsCost.add(elbows_cost2);
    print('Труб (3м):          ${bigs_pipes2} шт = ${bigs_pipes_cost2} руб');
    listBigsPipes.add(bigs_pipes2);
    listBigsPipesCost.add(bigs_pipes_cost2);
    print('Соединитель трубы:  $pipe_connect2 шт = ${pipe_connect_cost2} руб');
    listPipeConnect.add(pipe_connect2);
    listPipeConnectCost.add(pipe_connect_cost2);
    print('Труб (1м):          ${small_pipes2} шт = ${small_pipes_cost2} руб');
    listSmallPipes.add(small_pipes2);
    listSmallPipesCost.add(pipe_connect_cost2);
    print('Отмёт:              ${tips2} шт = ${tips_cost2} руб');
    listTips.add(tips2);
    listTipsCost.add(tips_cost2);
    print(
        'Держатель трубы:    ${pipe_holders2} шт = ${pipe_holders_cost2} руб');
    listPipeHolders.add(pipe_holders2);
    listPipeHoldersCost.add(pipe_holders_cost2);
    print('Штырь:              ${pins2} шт = ${pins_cost2} руб');
    listPins.add(pins2);
    listPinsCost.add(pins_cost2);
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
  double gutters_cost3 = (gutters3 * gutter_price);
  int gutter_connect3 = cornice_three.get_gutter_connectors();
  double gutter_connect_cost3 = (gutter_connect3 * gutter_connector_price);
  int plugs3 = cornice_three.get_plugs();
  double plug_cost3 = (plugs3 * plug_price);
  int gutter_holders3 = cornice_three.get_gutter_holders();
  double gutter_holder_cost3 = (gutter_holders3 * gutter_holder_price);
  int gutter_angles3 = cornice_three.get_gutter_angles().ceil();
  double gutter_angles_cost3 = (gutter_angles3 * gutter_angle_price);
  int funnels3 = cornice_three.get_funnels();
  double funnels_cost3 = (funnels3 * funnel_price);
  int elbows3 = cornice_three.get_elbows();
  double elbows_cost3 = (elbows3 * elbow_price);
  int bigs_pipes3 = cornice_three.get_bigs_pipes().ceil();
  double bigs_pipes_cost3 = (bigs_pipes3 * big_pipe_price);
  int pipe_connect3 = cornice_three.get_pipe_connectors();
  double pipe_connect_cost3 = (pipe_connect3 * pipe_connector_price);
  int small_pipes3 = cornice_three.get_small_pipes();
  double small_pipes_cost3 = (small_pipes3 * small_pipe_price);
  int tips3 = cornice_three.get_tips();
  double tips_cost3 = (tips3 * tip_price);
  int pipe_holders3 = cornice_three.get_pipe_holders();
  double pipe_holders_cost3 = (pipe_holders3 * pipe_holder_price);
  int pins3 = cornice_three.get_pins();
  double pins_cost3 = (pins3 * pin_price);

  if (cornice_three.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print('Желобов (3м):       ${gutters3} шт = ${gutters_cost3} руб');
    listGutters.add(gutters3);
    listGuttersCost.add(gutters_cost3);
    print(
        'Соединитель желоба: $gutter_connect3 шт = ${gutter_connect_cost3} руб');
    listGutterConnect.add(gutter_connect3);
    listGutterConnectCost.add(gutter_connect_cost3);
    if (plugs3 == 0) {
    } else {
      print('Заглушка желоба:    $plugs3 шт = ${plug_cost3} руб');
    }
    listPlugs.add(plugs3);
    listPlugsCost.add(plug_cost3);
    print(
        'Держатель желоба:   $gutter_holders3 шт = ${gutter_holder_cost3} руб');
    listGutterHolders.add(gutter_holders3);
    listGutterHoldersCost.add(gutter_holder_cost3);
    listGutterAngles.add(gutter_angles3);
    listGutterAnglesCost.add(gutter_angles_cost3);
    print('Воронка:            $funnels3 шт = ${funnels_cost3} руб');
    listFunnels.add(funnels3);
    listFunnelsCost.add(funnels_cost3);
    print('Колено:             $elbows3 шт = ${elbows_cost3} руб');
    listElbows.add(elbows3);
    listElbowsCost.add(elbows_cost3);
    print('Труб (3м):          ${bigs_pipes3} шт = ${bigs_pipes_cost3} руб');
    listBigsPipes.add(bigs_pipes3);
    listBigsPipesCost.add(bigs_pipes_cost3);
    print('Соединитель трубы:  $pipe_connect3 шт = ${pipe_connect_cost3} руб');
    listPipeConnect.add(pipe_connect3);
    listPipeConnectCost.add(pipe_connect_cost3);
    print('Труб (1м):          ${small_pipes3} шт = ${small_pipes_cost3} руб');
    listSmallPipes.add(small_pipes3);
    listSmallPipesCost.add(pipe_connect_cost3);
    print('Отмёт:              ${tips3} шт = ${tips_cost3} руб');
    listTips.add(tips3);
    listTipsCost.add(tips_cost3);
    print(
        'Держатель трубы:    ${pipe_holders3} шт = ${pipe_holders_cost3} руб');
    listPipeHolders.add(pipe_holders3);
    listPipeHoldersCost.add(pipe_holders_cost3);
    print('Штырь:              ${pins3} шт = ${pins_cost3} руб');
    listPins.add(pins3);
    listPinsCost.add(pins_cost3);
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
  double gutters_cost4 = (gutters4 * gutter_price);
  int gutter_connect4 = cornice_four.get_gutter_connectors();
  double gutter_connect_cost4 = (gutter_connect4 * gutter_connector_price);
  int plugs4 = cornice_four.get_plugs();
  double plug_cost4 = (plugs4 * plug_price);
  int gutter_holders4 = cornice_four.get_gutter_holders();
  double gutter_holder_cost4 = (gutter_holders4 * gutter_holder_price);
  int gutter_angles4 = cornice_four.get_gutter_angles().ceil();
  double gutter_angles_cost4 = (gutter_angles4 * gutter_angle_price);
  int funnels4 = cornice_four.get_funnels();
  double funnels_cost4 = (funnels4 * funnel_price);
  int elbows4 = cornice_four.get_elbows();
  double elbows_cost4 = (elbows4 * elbow_price);
  int bigs_pipes4 = cornice_four.get_bigs_pipes().ceil();
  double bigs_pipes_cost4 = (bigs_pipes4 * big_pipe_price);
  int pipe_connect4 = cornice_four.get_pipe_connectors();
  double pipe_connect_cost4 = (pipe_connect4 * pipe_connector_price);
  int small_pipes4 = cornice_four.get_small_pipes();
  double small_pipes_cost4 = (small_pipes4 * small_pipe_price);
  int tips4 = cornice_four.get_tips();
  double tips_cost4 = (tips4 * tip_price);
  int pipe_holders4 = cornice_four.get_pipe_holders();
  double pipe_holders_cost4 = (pipe_holders4 * pipe_holder_price);
  int pins4 = cornice_four.get_pins();
  double pins_cost4 = (pins4 * pin_price);

  if (cornice_four.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print('Желобов (3м):       ${gutters4} шт = ${gutters_cost4} руб');
    listGutters.add(gutters4);
    listGuttersCost.add(gutters_cost4);
    print(
        'Соединитель желоба: $gutter_connect4 шт = ${gutter_connect_cost4} руб');
    listGutterConnect.add(gutter_connect4);
    listGutterConnectCost.add(gutter_connect_cost4);
    if (plugs4 == 0) {
    } else {
      print('Заглушка желоба:    $plugs4 шт = ${plug_cost4} руб');
    }
    listPlugs.add(plugs4);
    listPlugsCost.add(plug_cost4);
    print(
        'Держатель желоба:   $gutter_holders4 шт = ${gutter_holder_cost4} руб');
    listGutterHolders.add(gutter_holders4);
    listGutterHoldersCost.add(gutter_holder_cost4);
    listGutterAngles.add(gutter_angles4);
    listGutterAnglesCost.add(gutter_angles_cost4);
    print('Воронка:            $funnels4 шт = ${funnels_cost4} руб');
    listFunnels.add(funnels4);
    listFunnelsCost.add(funnels_cost4);
    print('Колено:             $elbows4 шт = ${elbows_cost4} руб');
    listElbows.add(elbows4);
    listElbowsCost.add(elbows_cost4);
    print('Труб (3м):          ${bigs_pipes4} шт = ${bigs_pipes_cost4} руб');
    listBigsPipes.add(bigs_pipes4);
    listBigsPipesCost.add(bigs_pipes_cost4);
    print('Соединитель трубы:  $pipe_connect4 шт = ${pipe_connect_cost4} руб');
    listPipeConnect.add(pipe_connect4);
    listPipeConnectCost.add(pipe_connect_cost4);
    print('Труб (1м):          ${small_pipes4} шт = ${small_pipes_cost4} руб');
    listSmallPipes.add(small_pipes4);
    listSmallPipesCost.add(pipe_connect_cost4);
    print('Отмёт:              ${tips4} шт = ${tips_cost4} руб');
    listTips.add(tips4);
    listTipsCost.add(tips_cost4);
    print(
        'Держатель трубы:    ${pipe_holders4} шт = ${pipe_holders_cost4} руб');
    listPipeHolders.add(pipe_holders4);
    listPipeHoldersCost.add(pipe_holders_cost4);
    print('Штырь:              ${pins4} шт = ${pins_cost4} руб');
    listPins.add(pins4);
    listPinsCost.add(pins_cost4);
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
  double gutters_cost5 = (gutters5 * gutter_price);
  int gutter_connect5 = cornice_five.get_gutter_connectors();
  double gutter_connect_cost5 = (gutter_connect5 * gutter_connector_price);
  int plugs5 = cornice_five.get_plugs();
  double plug_cost5 = (plugs5 * plug_price);
  int gutter_holders5 = cornice_five.get_gutter_holders();
  double gutter_holder_cost5 = (gutter_holders5 * gutter_holder_price);
  int gutter_angles5 = cornice_five.get_gutter_angles().ceil();
  double gutter_angles_cost5 = (gutter_angles5 * gutter_angle_price);
  int funnels5 = cornice_five.get_funnels();
  double funnels_cost5 = (funnels5 * funnel_price);
  int elbows5 = cornice_five.get_elbows();
  double elbows_cost5 = (elbows5 * elbow_price);
  int bigs_pipes5 = cornice_five.get_bigs_pipes().ceil();
  double bigs_pipes_cost5 = (bigs_pipes5 * big_pipe_price);
  int pipe_connect5 = cornice_five.get_pipe_connectors();
  double pipe_connect_cost5 = (pipe_connect5 * pipe_connector_price);
  int small_pipes5 = cornice_five.get_small_pipes();
  double small_pipes_cost5 = (small_pipes5 * small_pipe_price);
  int tips5 = cornice_five.get_tips();
  double tips_cost5 = (tips5 * tip_price);
  int pipe_holders5 = cornice_five.get_pipe_holders();
  double pipe_holders_cost5 = (pipe_holders5 * pipe_holder_price);
  int pins5 = cornice_five.get_pins();
  double pins_cost5 = (pins5 * pin_price);

  if (cornice_five.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print('Желобов (3м):       ${gutters5} шт = ${gutters_cost5} руб');
    listGutters.add(gutters5);
    listGuttersCost.add(gutters_cost5);
    print(
        'Соединитель желоба: $gutter_connect5 шт = ${gutter_connect_cost5} руб');
    listGutterConnect.add(gutter_connect5);
    listGutterConnectCost.add(gutter_connect_cost5);
    if (plugs5 == 0) {
    } else {
      print('Заглушка желоба:    $plugs5 шт = ${plug_cost5} руб');
    }
    listPlugs.add(plugs5);
    listPlugsCost.add(plug_cost5);
    print(
        'Держатель желоба:   $gutter_holders5 шт = ${gutter_holder_cost5} руб');
    listGutterHolders.add(gutter_holders5);
    listGutterHoldersCost.add(gutter_holder_cost5);
    listGutterAngles.add(gutter_angles5);
    listGutterAnglesCost.add(gutter_angles_cost5);
    print('Воронка:            $funnels5 шт = ${funnels_cost5} руб');
    listFunnels.add(funnels5);
    listFunnelsCost.add(funnels_cost5);
    print('Колено:             $elbows5 шт = ${elbows_cost5} руб');
    listElbows.add(elbows5);
    listElbowsCost.add(elbows_cost5);
    print('Труб (3м):          ${bigs_pipes5} шт = ${bigs_pipes_cost5} руб');
    listBigsPipes.add(bigs_pipes5);
    listBigsPipesCost.add(bigs_pipes_cost5);
    print('Соединитель трубы:  $pipe_connect5 шт = ${pipe_connect_cost5} руб');
    listPipeConnect.add(pipe_connect5);
    listPipeConnectCost.add(pipe_connect_cost5);
    print('Труб (1м):          ${small_pipes5} шт = ${small_pipes_cost5} руб');
    listSmallPipes.add(small_pipes5);
    listSmallPipesCost.add(pipe_connect_cost5);
    print('Отмёт:              ${tips5} шт = ${tips_cost5} руб');
    listTips.add(tips5);
    listTipsCost.add(tips_cost5);
    print(
        'Держатель трубы:    ${pipe_holders5} шт = ${pipe_holders_cost5} руб');
    listPipeHolders.add(pipe_holders5);
    listPipeHoldersCost.add(pipe_holders_cost5);
    print('Штырь:              ${pins5} шт = ${pins_cost5} руб');
    listPins.add(pins5);
    listPinsCost.add(pins_cost5);
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
  double gutters_cost6 = (gutters6 * gutter_price);
  int gutter_connect6 = cornice_six.get_gutter_connectors();
  double gutter_connect_cost6 = (gutter_connect6 * gutter_connector_price);
  int plugs6 = cornice_six.get_plugs();
  double plug_cost6 = (plugs6 * plug_price);
  int gutter_holders6 = cornice_six.get_gutter_holders();
  double gutter_holder_cost6 = (gutter_holders6 * gutter_holder_price);
  int gutter_angles6 = cornice_six.get_gutter_angles().ceil();
  double gutter_angles_cost6 = (gutter_angles6 * gutter_angle_price);
  int funnels6 = cornice_six.get_funnels();
  double funnels_cost6 = (funnels6 * funnel_price);
  int elbows6 = cornice_six.get_elbows();
  double elbows_cost6 = (elbows6 * elbow_price);
  int bigs_pipes6 = cornice_six.get_bigs_pipes().ceil();
  double bigs_pipes_cost6 = (bigs_pipes6 * big_pipe_price);
  int pipe_connect6 = cornice_six.get_pipe_connectors();
  double pipe_connect_cost6 = (pipe_connect6 * pipe_connector_price);
  int small_pipes6 = cornice_six.get_small_pipes();
  double small_pipes_cost6 = (small_pipes6 * small_pipe_price);
  int tips6 = cornice_six.get_tips();
  double tips_cost6 = (tips6 * tip_price);
  int pipe_holders6 = cornice_six.get_pipe_holders();
  double pipe_holders_cost6 = (pipe_holders6 * pipe_holder_price);
  int pins6 = cornice_six.get_pins();
  double pins_cost6 = (pins6 * pin_price);

  if (cornice_six.cornice_length > 0.0) {
    print(
        '${listGutters.length + 1}). ВОДОСТОЧНЫЙ КАРНИЗ №${listGutters.length + 1}:');
    print('Желобов (3м):       ${gutters6} шт = ${gutters_cost6} руб');
    listGutters.add(gutters6);
    listGuttersCost.add(gutters_cost6);
    print(
        'Соединитель желоба: $gutter_connect6 шт = ${gutter_connect_cost6} руб');
    listGutterConnect.add(gutter_connect6);
    listGutterConnectCost.add(gutter_connect_cost6);
    if (plugs6 == 0) {
    } else {
      print('Заглушка желоба:    $plugs6 шт = ${plug_cost6} руб');
    }
    listPlugs.add(plugs6);
    listPlugsCost.add(plug_cost6);
    print(
        'Держатель желоба:   $gutter_holders6 шт = ${gutter_holder_cost6} руб');
    listGutterHolders.add(gutter_holders6);
    listGutterHoldersCost.add(gutter_holder_cost6);
    listGutterAngles.add(gutter_angles6);
    listGutterAnglesCost.add(gutter_angles_cost6);
    print('Воронка:            $funnels6 шт = ${funnels_cost6} руб');
    listFunnels.add(funnels6);
    listFunnelsCost.add(funnels_cost6);
    print('Колено:             $elbows6 шт = ${elbows_cost6} руб');
    listElbows.add(elbows6);
    listElbowsCost.add(elbows_cost6);
    print('Труб (3м):          ${bigs_pipes6} шт = ${bigs_pipes_cost6} руб');
    listBigsPipes.add(bigs_pipes6);
    listBigsPipesCost.add(bigs_pipes_cost6);
    print('Соединитель трубы:  $pipe_connect6 шт = ${pipe_connect_cost6} руб');
    listPipeConnect.add(pipe_connect6);
    listPipeConnectCost.add(pipe_connect_cost6);
    print('Труб (1м):          ${small_pipes6} шт = ${small_pipes_cost6} руб');
    listSmallPipes.add(small_pipes6);
    listSmallPipesCost.add(pipe_connect_cost6);
    print('Отмёт:              ${tips6} шт = ${tips_cost6} руб');
    listTips.add(tips6);
    listTipsCost.add(tips_cost6);
    print(
        'Держатель трубы:    ${pipe_holders6} шт = ${pipe_holders_cost6} руб');
    listPipeHolders.add(pipe_holders6);
    listPipeHoldersCost.add(pipe_holders_cost6);
    print('Штырь:              ${pins6} шт = ${pins_cost6} руб');
    listPins.add(pins6);
    listPinsCost.add(pins_cost6);
    print('');
  } else {}

  print('КОЛИЧЕСТВО КАРНИЗОВ:      ${listGutters.length} шт\n');
  print('СУММАРНОЕ КОЛИЧЕСТВО ЭЛЕМЕНТОВ СО ВСЕХ КАРНИЗОВ:');
  print(
      'Желоб (L=3000мм):   ${sum_gutters()} шт = ${sum_gutters_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_gutters());
  listCosts.add(sum_gutters_cost());
  print(
      'Соединитель желоба: ${sum_gutter_connect()} шт = ${sum_gutters_connect_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_gutter_connect());
  listCosts.add(sum_gutters_connect_cost());
  if (sum_plugs() == 0) {
  } else {
    print(
        'Заглушка желоба:    ${sum_plugs()} шт = ${sum_plugs_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_plugs());
    listCosts.add(sum_plugs_cost());
  }
  print(
      'Держатель желоба:   ${sum_gutter_holders()} шт = ${sum_gutter_holders_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_gutter_holders());
  listCosts.add(sum_gutter_holders_cost());
  if (sum_gutter_angles() == 0) {
  } else {
    print(
        'Угол желоба:        ${sum_gutter_angles()} шт = ${sum_gutter_angles_cost().toStringAsFixed(2)} руб');
    listElements.add(sum_gutter_angles());
    listCosts.add(sum_gutter_angles_cost());
  }
  print(
      'Воронка:            ${sum_funnels()} шт = ${sum_funnels_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_funnels());
  listCosts.add(sum_funnels_cost());
  print(
      'Колено:             ${sum_elbows()} шт = ${sum_elbows_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_elbows());
  listCosts.add(sum_elbows_cost());
  print(
      'Труба (L=3000мм):   ${sum_bigs_pipes()} шт = ${sum_bigs_pipes_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_bigs_pipes());
  listCosts.add(sum_bigs_pipes_cost());
  print(
      'Соединитель трубы:  ${sum_pipe_connect()} шт = ${sum_pipe_connect_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_pipe_connect());
  listCosts.add(sum_pipe_connect_cost());
  print(
      'Труба (L=1000мм):   ${sum_small_pipes()} шт = ${sum_small_pipes_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_small_pipes());
  listCosts.add(sum_small_pipes_cost());
  print(
      'Отмёт:              ${sum_tips()} шт = ${sum_tips_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_tips());
  listCosts.add(sum_tips_cost());
  print(
      'Держатель трубы:    ${sum_pipe_holders()} шт = ${sum_pipe_holders_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_pipe_holders());
  listCosts.add(sum_pipe_holders_cost());
  print(
      'Штырь:              ${sum_pins()} шт = ${sum_pins_cost().toStringAsFixed(2)} руб');
  listElements.add(sum_pins());
  listCosts.add(sum_pins_cost());
  print(
      'ИТОГО:              ${sum_elements()} шт = ${sum_costs().toStringAsFixed(2)} руб');
}
