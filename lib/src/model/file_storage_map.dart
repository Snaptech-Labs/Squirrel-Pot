import 'package:squirrel_pot/src/model/file_model.dart';
import 'package:squirrel_pot/src/model/storage_space.dart';

///
/// This is a wrapper class for Map<File, StorageSpace>
///
class FileStorageMap implements Map<File, StorageSpace> {
  final Map<File, StorageSpace> _fileStorageInnerMap;

  FileStorageMap() : _fileStorageInnerMap = {};

  @override
  StorageSpace? operator [](Object? key) {
    return _fileStorageInnerMap[key];
  }

  @override
  void operator []=(File key, StorageSpace value) {
    _fileStorageInnerMap[key] = value;
  }

  @override
  void addAll(Map<File, StorageSpace> other) {
    _fileStorageInnerMap.addAll(other);
  }

  @override
  void addEntries(Iterable<MapEntry<File, StorageSpace>> newEntries) {
    _fileStorageInnerMap.addEntries(newEntries);
  }

  @override
  Map<RK, RV> cast<RK, RV>() {
    return _fileStorageInnerMap.cast<RK, RV>();
  }

  @override
  void clear() {
    _fileStorageInnerMap.clear();
  }

  @override
  bool containsKey(Object? key) {
    return _fileStorageInnerMap.containsKey(key);
  }

  @override
  bool containsValue(Object? value) {
    return _fileStorageInnerMap.containsValue(value);
  }

  @override
  Iterable<MapEntry<File, StorageSpace>> get entries =>
      _fileStorageInnerMap.entries;

  @override
  void forEach(void Function(File key, StorageSpace value) action) {
    _fileStorageInnerMap.forEach(action);
  }

  @override
  bool get isEmpty => _fileStorageInnerMap.isEmpty;

  @override
  bool get isNotEmpty => _fileStorageInnerMap.isNotEmpty;

  @override
  Iterable<File> get keys => _fileStorageInnerMap.keys;

  @override
  int get length => _fileStorageInnerMap.length;

  @override
  Map<K2, V2> map<K2, V2>(
      MapEntry<K2, V2> Function(File key, StorageSpace value) convert) {
    // TODO: implement map
    return _fileStorageInnerMap.map(convert);
  }

  @override
  StorageSpace putIfAbsent(File key, StorageSpace Function() ifAbsent) {
    return _fileStorageInnerMap.putIfAbsent(key, ifAbsent);
  }

  @override
  StorageSpace? remove(Object? key) {
    return _fileStorageInnerMap.remove(key);
  }

  @override
  void removeWhere(bool Function(File key, StorageSpace value) test) {
    return _fileStorageInnerMap.removeWhere(test);
  }

  @override
  StorageSpace update(
      File key, StorageSpace Function(StorageSpace value) update,
      {StorageSpace Function()? ifAbsent}) {
    return _fileStorageInnerMap.update(key, update, ifAbsent: ifAbsent);
  }

  @override
  void updateAll(StorageSpace Function(File key, StorageSpace value) update) {
    _fileStorageInnerMap.updateAll(update);
  }

  @override
  Iterable<StorageSpace> get values => _fileStorageInnerMap.values;

  @override
  String toString() {
    return _fileStorageInnerMap.toString();
  }
}
