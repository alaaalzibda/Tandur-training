import '../../general_exports.dart';

class MyAppController extends GetxController {
  dynamic userData;
  LocalStorage localStorage = LocalStorage();
  Map<String, dynamic> cartData = <String, dynamic>{};

  @override
  Future<void> onInit() async {
    super.onInit();
    userData = await localStorage.getFromStorage(key: storeUser);
    consoleLog(userData, key: 'userData');
    if (userData != null) {}
  }

  Future<void> updateData() async {
    final List<int> currentMap = <int>[1, 2, 3];
    final List<int> newList = <int>[];
    for (int item in currentMap) {
      newList.add(item);
    }
    update();
  }

  void onUserAuthenticated(dynamic userDataValue) {
    localStorage.saveToStorage(key: storeUser, value: userDataValue);
    userData = userDataValue;
    consoleLog(userDataValue);
    update();
  }

  void onUserUpdated(dynamic userDataValue) {
    localStorage.saveToStorage(key: storeUser, value: userDataValue);
    userData = userDataValue;
    consoleLog(userDataValue);
    update();
  }

  void onSignOut() {
    localStorage.erase();
    userData = null;
  }
}
