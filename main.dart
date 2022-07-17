import 'drainage_cornice.dart';

final listGutters = <int>[];
int sum_gutters() {
  if (listGutters.isEmpty) {
    return 0;
  }
  return listGutters.reduce((value, element) => value += element);
}

final listGuttersConnectors = <int>[];
int sum_gutter_connectors() {
  if (listGuttersConnectors.isEmpty) {
    return 0;
  }
  return listGuttersConnectors.reduce((value, element) => value += element);
}

void main() {
  var cornice_one = DrainageCornice(10.0, 30.0, 2);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_one (первый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №1 в метрах)
  - double downpipe_height (высота от карниза №1 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №1)
  */
  int gutters1 = cornice_one.get_gutters().ceil();
  int gutter_connectors1 = cornice_one.get_gutter_connectors();

  if (cornice_one.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters1} шт');
    listGutters.add(gutters1);
    print('Соединитель желоба: $gutter_connectors1 шт');
    listGuttersConnectors.add(gutter_connectors1);
    cornice_one.get_plugs();
    cornice_one.get_gutter_holders();
    cornice_one.get_gutter_angles();
    cornice_one.get_funnels();
    cornice_one.get_elbows();
    cornice_one.get_big_pipes();
    cornice_one.get_pipe_connectors();
    cornice_one.get_small_pipes();
    cornice_one.get_tips();
    cornice_one.get_pipe_holders();
    cornice_one.get_pins();
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

  if (cornice_two.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters2} шт');
    listGutters.add(gutters2);
    print('Соединитель желоба: $gutter_connectors2 шт');
    listGuttersConnectors.add(gutter_connectors2);
    cornice_two.get_plugs();
    cornice_two.get_gutter_holders();
    cornice_two.get_gutter_angles();
    cornice_two.get_funnels();
    cornice_two.get_elbows();
    cornice_two.get_big_pipes();
    cornice_two.get_pipe_connectors();
    cornice_two.get_small_pipes();
    cornice_two.get_tips();
    cornice_two.get_pipe_holders();
    cornice_two.get_pins();
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

  if (cornice_three.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters3} шт');
    listGutters.add(gutters3);
    print('Соединитель желоба: $gutter_connectors3 шт');
    listGuttersConnectors.add(gutter_connectors3);
    cornice_three.get_plugs();
    cornice_three.get_gutter_holders();
    cornice_three.get_gutter_angles();
    cornice_three.get_funnels();
    cornice_three.get_elbows();
    cornice_three.get_big_pipes();
    cornice_three.get_pipe_connectors();
    cornice_three.get_small_pipes();
    cornice_three.get_tips();
    cornice_three.get_pipe_holders();
    cornice_three.get_pins();
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

  if (cornice_four.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters4} шт');
    listGutters.add(gutters4);
    print('Соединитель желоба: $gutter_connectors4 шт');
    listGuttersConnectors.add(gutter_connectors4);
    cornice_four.get_plugs();
    cornice_four.get_gutter_holders();
    cornice_four.get_gutter_angles();
    cornice_four.get_funnels();
    cornice_four.get_elbows();
    cornice_four.get_big_pipes();
    cornice_four.get_pipe_connectors();
    cornice_four.get_small_pipes();
    cornice_four.get_tips();
    cornice_four.get_pipe_holders();
    cornice_four.get_pins();
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

  if (cornice_five.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters5} шт');
    listGutters.add(gutters5);
    print('Соединитель желоба: $gutter_connectors5 шт');
    listGuttersConnectors.add(gutter_connectors5);
    cornice_five.get_plugs();
    cornice_five.get_gutter_holders();
    cornice_five.get_gutter_angles();
    cornice_five.get_funnels();
    cornice_five.get_elbows();
    cornice_five.get_big_pipes();
    cornice_five.get_pipe_connectors();
    cornice_five.get_small_pipes();
    cornice_five.get_tips();
    cornice_five.get_pipe_holders();
    cornice_five.get_pins();
    print('');
  } else {}

  var cornice_six = DrainageCornice(33.0, 3.5, 3);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_six (шестой
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №6 в метрах)
  - double downpipe_height (высота от карниза №6 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №6)
  */
  int gutters6 = cornice_six.get_gutters().round();
  int gutter_connectors6 = cornice_six.get_gutter_connectors();

  if (cornice_six.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters6} шт');
    listGutters.add(gutters6);
    print('Соединитель желоба: $gutter_connectors6 шт');
    listGuttersConnectors.add(gutter_connectors6);
    cornice_six.get_plugs();
    cornice_six.get_gutter_holders();
    cornice_six.get_gutter_angles();
    cornice_six.get_funnels();
    cornice_six.get_elbows();
    cornice_six.get_big_pipes();
    cornice_six.get_pipe_connectors();
    cornice_six.get_small_pipes();
    cornice_six.get_tips();
    cornice_six.get_pipe_holders();
    cornice_six.get_pins();
    print('');
  } else {}

  print('Количество карнизов: ${listGutters.length} шт');
  print('Итого желобов (3м): ${sum_gutters()} шт');
  print('Итого соединителей желоба: ${sum_gutter_connectors()} шт');
}
