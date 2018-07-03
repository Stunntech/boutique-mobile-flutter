import 'dart:collection';

class Jahmaika {
  static HashMap<int, int> selectedMap = new HashMap();
  static void initSelectedMap() {
    if (selectedMap.isEmpty) {
      selectedMap[0] = 0;
      selectedMap[1] = 0;
      selectedMap[2] = 0;
      selectedMap[3] = 0;
    }
  }
}
