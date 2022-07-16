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

  sum_gutters() {
    double sum_gutters = gutters;
    print('Желоб: $sum_gutters шт');
    dynamic listGutters;
    for (dynamic gutters in listGutters) {
      print(gutters);
    }
  }

  double get gutters => gutters;
  double get gutter_connectors => gutter_connectors;
  double get plugs => plugs;
  double get gutter_holders => gutter_holders;
  double get gutter_angles => gutter_angles;
  double get funnels => funnels;
  double get elbows => elbows;
  double get big_pipes => big_pipes;
  double get pipe_connectors => pipe_connectors;
  double get small_pipes => small_pipes;
  double get tips => tips;
  double get pipe_holders => pipe_holders;
  double get pins => pins;

  DrainageCornice(
    this.cornice_length,
    this.downpipe_height,
    this.num_downpipe,
  );

  get_gutters() {
    double gutters = ((cornice_length * num_cornice) / length_gutter);
    print('Желоб (3м): $gutters шт');
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
    print('Труба (3м): $big_pipes шт');
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
