import 'dart:ffi';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_todolist/app/core/utils/keys.dart';

// THIS CLASS USE TO STORE DATA IN LOCAL DATABASE USING KEY-VALUE PAIRS

class StorageService extends GetxService {
  late GetStorage _box;

  Future<StorageService> init() async {
    _box = GetStorage();
    await Get.putAsync(() => StorageService().init());
    await _box.writeIfNull(taskKey, []);
    return this;
  }

  // HERE T STANDS FOR TYPE IT WILL READ DATA FROM LOCAL STORAGE
  T read<T>(String key) {
    return _box.read(key);
  }

  void write(String key, dynamic value) async {
    await _box.write(key, value);
  }
}
