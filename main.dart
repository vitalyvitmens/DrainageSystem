class DrainageCornice {
  final double cornice_length;
  final double downpipe_height;
  final int num_downpipe;
  final int length_gutter = 3;
  final int length_big_pipe = 3;
  final int length_small_pipe = 1;
  double gutter_holder_pitch = 0.5;
  double pipe_holder_pitch = 1.25;
  int num_cornice = 1;
  int gutter_angle = 0;

  DrainageCornice(
    this.cornice_length,
    this.downpipe_height,
    this.num_downpipe,
  );

  get_gutters() {
    double gutters = ((cornice_length * num_cornice) / length_gutter);
    print('Желоб: $gutters шт');
  }

  get_gutter_connectors() {
    final gutter_connectors =
        (((cornice_length * num_cornice) / length_gutter).ceil()) -
            (num_cornice);
    print('Соединитель желоба: $gutter_connectors шт');
  }

  void get_plugs() {
    if (gutter_angle == 0) {
      final plugs = num_cornice * 2;
      print('Заглушка желоба: $plugs шт');
    } else if (gutter_angle == 1) {
      final plugs = num_cornice;
      print('Заглушка желоба: $plugs шт');
    } else if (gutter_angle == 2) {
      final plugs = 0;
      print('Заглушка желоба: $plugs шт');
    } else {
      return;
    }
  }

  void get_gutter_holders() {
    final gutter_holders =
        (((cornice_length * num_cornice) / gutter_holder_pitch) + num_cornice)
            .ceil();
    print('Держатель желоба: $gutter_holders шт');
  }

  void get_gutter_angles() {
    if (gutter_angle == 0) {
      return;
    } else {
      final gutter_angles = gutter_angle;
      print('Угол желоба: $gutter_angles шт');
    }
  }

  void get_funnels() {
    final funnels = num_downpipe;
    print('Воронка: $funnels шт');
  }

  void get_elbows() {
    final elbows = num_downpipe * 2;
    print('Колено: $elbows шт');
  }

  void get_big_pipes() {
    double big_pipes = ((downpipe_height * num_downpipe) / length_big_pipe);
    print('Труба 3м: $big_pipes шт');
  }

  void get_pipe_connectors() {
    final pipe_connectors =
        ((downpipe_height * num_downpipe) / length_big_pipe).ceil() -
            ((length_big_pipe * num_downpipe) / length_big_pipe).ceil();
    print('Соединитель трубы: $pipe_connectors шт');
  }

  void get_small_pipes() {
    final small_pipes = num_downpipe;
    print('Труба 1м: $small_pipes шт');
  }

  void get_tips() {
    final tips = num_downpipe;
    print('Отмёт: $tips шт');
  }

  void get_pipe_holders() {
    final pipe_holders =
        (((downpipe_height * num_downpipe) / pipe_holder_pitch) + num_downpipe)
            .ceil();
    print('Держатель трубы: $pipe_holders шт');
  }

  void get_pins() {
    final pins =
        (((downpipe_height * num_downpipe) / pipe_holder_pitch) + num_downpipe)
            .ceil();
    print('Штырь (держателя трубы): $pins шт');
  }
}

void main() {
  var listGutters = [];
  var cornice_one = DrainageCornice(10.0, 3.0, 2);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_one (первый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №1 в метрах)
  - double downpipe_height (высота от карниза №1 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №1)
  */
  if (cornice_one.cornice_length > 0.0) {
    cornice_one.get_gutters();
    listGutters.add(cornice_one.get_gutters);
    cornice_one.get_gutter_connectors();
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
  } else {
    return;
  }

  var cornice_two = DrainageCornice(15.0, 5.0, 3);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_two (второй
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №2 в метрах)
  - double downpipe_height (высота от карниза №2 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №2)
  */
  if (cornice_two.cornice_length > 0.0) {
    cornice_two.get_gutters();
    listGutters.add(cornice_two.get_gutters);
    cornice_two.get_gutter_connectors();
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

  var cornice_three = DrainageCornice(10.0, 10.0, 10);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_three (третий
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №3 в метрах)
  - double downpipe_height (высота от карниза №3 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №3)
  */
  if (cornice_three.cornice_length > 0.0) {
    cornice_three.get_gutters();
    listGutters.add(cornice_three.get_gutters);
    cornice_three.get_gutter_connectors();
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

  var cornice_four = DrainageCornice(20.0, 20.0, 20);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_four (четвёртый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №4 в метрах)
  - double downpipe_height (высота от карниза №4 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №4)
  */
  if (cornice_four.cornice_length > 0.0) {
    cornice_four.get_gutters();
    listGutters.add(cornice_four.get_gutters);
    cornice_four.get_gutter_connectors();
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

  var cornice_five = DrainageCornice(30.0, 30.0, 30);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_five (пятый
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №5 в метрах)
  - double downpipe_height (высота от карниза №5 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №5)
  */
  if (cornice_five.cornice_length > 0.0) {
    cornice_five.get_gutters();
    listGutters.add(cornice_five.get_gutters);
    cornice_five.get_gutter_connectors();
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

  var cornice_six = DrainageCornice(10.0, 10.0, 10);
  /*
  Создаём экземпляр класса DrainageCornice с названием cornice_six (шестой
  водосточный карниз), он принимает на вход следующие параметры:
  - double cornice_length (длина карниза №6 в метрах)
  - double downpipe_height (высота от карниза №6 до земли в метрах)
  - int num_downpipe (количество водосточных стояков на карнизе №6)
  */
  if (cornice_six.cornice_length > 0.0) {
    cornice_six.get_gutters();
    listGutters.add(cornice_six.get_gutters);
    cornice_six.get_gutter_connectors();
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

  for (dynamic element in listGutters) {
    print(element);
  }
  // listGutters.reduce((value, element) => value += element);
  print(listGutters.first.runtimeType);
}
