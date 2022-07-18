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
