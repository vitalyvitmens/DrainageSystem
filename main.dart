import 'drainage_cornice.dart';

final listGutters = <int>[];
int sum_gutters() {
  if (listGutters.isEmpty) {
    return 0;
  }
  return listGutters.reduce((value, element) => value += element);
}

final listGutterConnectors = <int>[];
int sum_gutter_connectors() {
  if (listGutterConnectors.isEmpty) {
    return 0;
  }
  return listGutterConnectors.reduce((value, element) => value += element);
}

final listPlugs = <int>[];
int sum_plugs() {
  if (listPlugs.isEmpty) {
    return 0;
  }
  return listPlugs.reduce((value, element) => value += element);
}

final listGutterHolders = <int>[];
int sum_gutter_holders() {
  if (listGutterHolders.isEmpty) {
    return 0;
  }
  return listGutterHolders.reduce((value, element) => value += element);
}

final listGutterAngles = <int>[];
int sum_gutter_angles() {
  if (listGutterAngles.isEmpty) {
    return 0;
  }
  return listGutterAngles.reduce((value, element) => value = element);
}

final listFunnels = <int>[];
int sum_funnels() {
  if (listFunnels.isEmpty) {
    return 0;
  }
  return listFunnels.reduce((value, element) => value += element);
}

final listElbows = <int>[];
int sum_elbows() {
  if (listElbows.isEmpty) {
    return 0;
  }
  return listElbows.reduce((value, element) => value += element);
}

final listBigsPipes = <int>[];
int sum_bigs_pipes() {
  if (listBigsPipes.isEmpty) {
    return 0;
  }
  return listBigsPipes.reduce((value, element) => value += element);
}

final listPipeConnectors = <int>[];
int sum_pipe_connectors() {
  if (listPipeConnectors.isEmpty) {
    return 0;
  }
  return listPipeConnectors.reduce((value, element) => value += element);
}

final listSmallPipes = <int>[];
int sum_small_pipes() {
  if (listSmallPipes.isEmpty) {
    return 0;
  }
  return listSmallPipes.reduce((value, element) => value += element);
}

final listTips = <int>[];
int sum_tips() {
  if (listTips.isEmpty) {
    return 0;
  }
  return listTips.reduce((value, element) => value += element);
}

final listPipeHolders = <int>[];
int sum_pipe_holders() {
  if (listPipeHolders.isEmpty) {
    return 0;
  }
  return listPipeHolders.reduce((value, element) => value += element);
}

final listPins = <int>[];
int sum_pins() {
  if (listPins.isEmpty) {
    return 0;
  }
  return listPins.reduce((value, element) => value += element);
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
  int plugs1 = cornice_one.get_plugs();
  int gutter_holders1 = cornice_one.get_gutter_holders();
  int gutter_angles1 = cornice_one.get_gutter_angles().ceil();
  int funnels1 = cornice_one.get_funnels();
  int elbows1 = cornice_one.get_elbows();
  int bigs_pipes1 = cornice_one.get_bigs_pipes().ceil();
  int pipe_connectors1 = cornice_one.get_pipe_connectors();
  int small_pipes1 = cornice_one.get_small_pipes();
  int small_tips1 = cornice_one.get_tips();
  int pipe_holders1 = cornice_one.get_pipe_holders();
  int pins1 = cornice_one.get_pins();

  if (cornice_one.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters1} шт');
    listGutters.add(gutters1);
    print('Соединитель желоба: $gutter_connectors1 шт');
    listGutterConnectors.add(gutter_connectors1);
    if (plugs1 == 0) {
    } else {
      print('Заглушка желоба: $plugs1 шт');
    }
    listPlugs.add(plugs1);
    print('Держатель желоба: $gutter_holders1 шт');
    listGutterHolders.add(gutter_holders1);
    listGutterAngles.add(gutter_angles1);
    print('Воронка: $funnels1 шт');
    listFunnels.add(funnels1);
    print('Колено: $elbows1 шт');
    listElbows.add(elbows1);
    print('Труб (3м): ${bigs_pipes1} шт');
    listBigsPipes.add(bigs_pipes1);
    print('Соединитель трубы: $pipe_connectors1 шт');
    listPipeConnectors.add(pipe_connectors1);
    print('Труб (1м): ${small_pipes1} шт');
    listSmallPipes.add(small_pipes1);
    print('Отмёт: ${small_tips1} шт');
    listTips.add(small_tips1);
    print('Держатель трубы: ${pipe_holders1} шт');
    listPipeHolders.add(pipe_holders1);
    print('Штырь (держателя трубы): ${pins1} шт');
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
  int small_tips2 = cornice_two.get_tips();
  int pipe_holders2 = cornice_two.get_pipe_holders();
  int pins2 = cornice_two.get_pins();

  if (cornice_two.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters2} шт');
    listGutters.add(gutters2);
    print('Соединитель желоба: $gutter_connectors2 шт');
    listGutterConnectors.add(gutter_connectors2);
    if (plugs2 == 0) {
    } else {
      print('Заглушка желоба: $plugs2 шт');
    }
    listPlugs.add(plugs2);
    print('Держатель желоба: $gutter_holders2 шт');
    listGutterHolders.add(gutter_holders2);
    listGutterAngles.add(gutter_angles2);
    print('Воронка: $funnels2 шт');
    listFunnels.add(funnels2);
    print('Колено: $elbows2 шт');
    listElbows.add(elbows2);
    print('Труб (3м): ${bigs_pipes2} шт');
    listBigsPipes.add(bigs_pipes2);
    print('Соединитель трубы: $pipe_connectors2 шт');
    listPipeConnectors.add(pipe_connectors2);
    print('Труб (1м): ${small_pipes2} шт');
    listSmallPipes.add(small_pipes2);
    print('Отмёт: ${small_tips2} шт');
    listTips.add(small_tips2);
    print('Держатель трубы: ${pipe_holders2} шт');
    listPipeHolders.add(pipe_holders2);
    print('Штырь (держателя трубы): ${pins2} шт');
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
  int small_tips3 = cornice_three.get_tips();
  int pipe_holders3 = cornice_three.get_pipe_holders();
  int pins3 = cornice_three.get_pins();

  if (cornice_three.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters3} шт');
    listGutters.add(gutters3);
    print('Соединитель желоба: $gutter_connectors3 шт');
    listGutterConnectors.add(gutter_connectors3);
    if (plugs3 == 0) {
    } else {
      print('Заглушка желоба: $plugs3 шт');
    }
    listPlugs.add(plugs3);
    print('Держатель желоба: $gutter_holders3 шт');
    listGutterHolders.add(gutter_holders3);
    listGutterAngles.add(gutter_angles3);
    print('Воронка: $funnels3 шт');
    listFunnels.add(funnels3);
    print('Колено: $elbows3 шт');
    listElbows.add(elbows3);
    print('Труб (3м): ${bigs_pipes3} шт');
    listBigsPipes.add(bigs_pipes3);
    print('Соединитель трубы: $pipe_connectors3 шт');
    listPipeConnectors.add(pipe_connectors3);
    print('Труб (1м): ${small_pipes3} шт');
    listSmallPipes.add(small_pipes3);
    print('Отмёт: ${small_tips3} шт');
    listTips.add(small_tips3);
    print('Держатель трубы: ${pipe_holders3} шт');
    listPipeHolders.add(pipe_holders3);
    print('Штырь (держателя трубы): ${pins3} шт');
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
  int small_tips4 = cornice_four.get_tips();
  int pipe_holders4 = cornice_four.get_pipe_holders();
  int pins4 = cornice_four.get_pins();

  if (cornice_four.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters4} шт');
    listGutters.add(gutters4);
    print('Соединитель желоба: $gutter_connectors4 шт');
    listGutterConnectors.add(gutter_connectors4);
    if (plugs4 == 0) {
    } else {
      print('Заглушка желоба: $plugs4 шт');
    }
    listPlugs.add(plugs4);
    print('Держатель желоба: $gutter_holders4 шт');
    listGutterHolders.add(gutter_holders4);
    listGutterAngles.add(gutter_angles4);
    print('Воронка: $funnels4 шт');
    listFunnels.add(funnels4);
    print('Колено: $elbows4 шт');
    listElbows.add(elbows4);
    print('Труб (3м): ${bigs_pipes4} шт');
    listBigsPipes.add(bigs_pipes4);
    print('Соединитель трубы: $pipe_connectors4 шт');
    listPipeConnectors.add(pipe_connectors4);
    print('Труб (1м): ${small_pipes4} шт');
    listSmallPipes.add(small_pipes4);
    print('Отмёт: ${small_tips4} шт');
    listTips.add(small_tips4);
    print('Держатель трубы: ${pipe_holders4} шт');
    listPipeHolders.add(pipe_holders4);
    print('Штырь (держателя трубы): ${pins4} шт');
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
  int small_tips5 = cornice_five.get_tips();
  int pipe_holders5 = cornice_five.get_pipe_holders();
  int pins5 = cornice_five.get_pins();

  if (cornice_five.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters5} шт');
    listGutters.add(gutters5);
    print('Соединитель желоба: $gutter_connectors5 шт');
    listGutterConnectors.add(gutter_connectors5);
    if (plugs5 == 0) {
    } else {
      print('Заглушка желоба: $plugs5 шт');
    }
    listPlugs.add(plugs5);
    print('Держатель желоба: $gutter_holders5 шт');
    listGutterHolders.add(gutter_holders5);
    listGutterAngles.add(gutter_angles5);
    print('Воронка: $funnels5 шт');
    listFunnels.add(funnels5);
    print('Колено: $elbows5 шт');
    listElbows.add(elbows5);
    print('Труб (3м): ${bigs_pipes5} шт');
    listBigsPipes.add(bigs_pipes5);
    print('Соединитель трубы: $pipe_connectors5 шт');
    listPipeConnectors.add(pipe_connectors5);
    print('Труб (1м): ${small_pipes5} шт');
    listSmallPipes.add(small_pipes5);
    print('Отмёт: ${small_tips5} шт');
    listTips.add(small_tips5);
    print('Держатель трубы: ${pipe_holders5} шт');
    listPipeHolders.add(pipe_holders5);
    print('Штырь (держателя трубы): ${pins5} шт');
    listPins.add(pins5);
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
  int plugs6 = cornice_six.get_plugs();
  int gutter_holders6 = cornice_six.get_gutter_holders();
  int gutter_angles6 = cornice_six.get_gutter_angles().ceil();
  int funnels6 = cornice_six.get_funnels();
  int elbows6 = cornice_six.get_elbows();
  int bigs_pipes6 = cornice_six.get_bigs_pipes().ceil();
  int pipe_connectors6 = cornice_six.get_pipe_connectors();
  int small_pipes6 = cornice_six.get_small_pipes();
  int small_tips6 = cornice_six.get_tips();
  int pipe_holders6 = cornice_six.get_pipe_holders();
  int pins6 = cornice_six.get_pins();

  if (cornice_six.cornice_length > 0.0) {
    print('Желобов (3м): ${gutters6} шт');
    listGutters.add(gutters6);
    print('Соединитель желоба: $gutter_connectors6 шт');
    listGutterConnectors.add(gutter_connectors6);
    if (plugs6 == 0) {
    } else {
      print('Заглушка желоба: $plugs6 шт');
    }
    listPlugs.add(plugs6);
    print('Держатель желоба: $gutter_holders6 шт');
    listGutterHolders.add(gutter_holders6);
    listGutterAngles.add(gutter_angles6);
    print('Воронка: $funnels6 шт');
    listFunnels.add(funnels6);
    print('Колено: $elbows6 шт');
    listElbows.add(elbows6);
    print('Труб (3м): ${bigs_pipes6} шт');
    listBigsPipes.add(bigs_pipes6);
    print('Соединитель трубы: $pipe_connectors6 шт');
    listPipeConnectors.add(pipe_connectors6);
    print('Труб (1м): ${small_pipes6} шт');
    listSmallPipes.add(small_pipes6);
    print('Отмёт: ${small_tips6} шт');
    listTips.add(small_tips6);
    print('Держатель трубы: ${pipe_holders6} шт');
    listPipeHolders.add(pipe_holders6);
    print('Штырь (держателя трубы): ${pins6} шт');
    listPins.add(pins6);
    print('');
  } else {}

  print('Количество карнизов:       ${listGutters.length} шт');
  print('Итого желоб (3м):          ${sum_gutters()} шт');
  print('Итого соединитель желоба:  ${sum_gutter_connectors()} шт');
  if (sum_plugs() == 0) {
  } else {
    print('Итого заглушка желоба:     ${sum_plugs()} шт');
  }
  print('Итого держатель желоба:    ${sum_gutter_holders()} шт');
  if (sum_gutter_angles() == 0) {
  } else {
    print('Итого угол желоба:         ${sum_gutter_angles()} шт');
  }
  print('Итого воронок:             ${sum_funnels()} шт');
  print('Итого колен:               ${sum_elbows()} шт');
  print('Итого труб (3м):           ${sum_bigs_pipes()} шт');
  print('Итого соединителей труб:   ${sum_pipe_connectors()} шт');
  print('Итого труб (1м):           ${sum_small_pipes()} шт');
  print('Итого отмёт:               ${sum_tips()} шт');
  print('Итого держатель труб:      ${sum_pipe_holders()} шт');
  print('Итого штырь:               ${sum_pins()} шт');

  // print(listPlugs.length);
  // print(listPlugs.length.runtimeType);
  // print(listPlugs.first);
  // print(listPlugs.first.runtimeType);
}
