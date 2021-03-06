import 'package:e_commerce/core/constants/hive_keys.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveManager {
  static late Box<dynamic> _db;

  static Box<dynamic> get instance => _db;

  static preferencesInit() async {
    // Directory directory = await pathProvider.getApplicationDocumentsDirectory();
    // Hive.init(directory.path);
    await Hive.initFlutter();
    //  HiveManager._init();
    await openBox();
    return;
  }

  static Future<void> openBox() async {
    _db = await Hive.openBox('user');
  }

  static Future<void> setStringValue(HiveKeys key, String value) async {
    await _db.put(key.toString(), value);
  }

  static String? getStringValue(HiveKeys key) => _db.get(key.toString());

  void clear() {
    _db.clear();
  }
}
