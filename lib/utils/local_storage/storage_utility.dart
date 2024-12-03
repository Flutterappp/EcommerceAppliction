// ignore_for_file: avoid_print

import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    try {
      await _storage.write(key, value);
    } catch (e) {
      print('Error saving data: $e');
      // Handle error here
    }
  }

  // Generic method to read data
  T? readData<T>(String key) {
    try {
      return _storage.read<T>(key);
    } catch (e) {
      print('Error reading data: $e');
      // Handle error here
      return null;
    }
  }

  // Generic method to remove data
  Future<void> removeData(String key) async {
    try {
      await _storage.remove(key);
    } catch (e) {
      print('Error removing data: $e');
      // Handle error here
    }
  }

  // Clear all data in the storage
  Future<void> clearAll() async {
    try {
      await _storage.erase();
    } catch (e) {
      print('Error clearing all data: $e');
      // Handle error here
    }
  }
}
