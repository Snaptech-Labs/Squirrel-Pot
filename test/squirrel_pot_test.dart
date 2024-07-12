import 'package:squirrel_pot/squirrel_pot.dart';
import 'package:squirrel_pot/src/model/file_model.dart';
import 'package:squirrel_pot/src/model/file_storage_map.dart';
import 'package:squirrel_pot/src/model/storage_space.dart';
import 'package:test/test.dart';

void main() {
  group('Distribute Files Test', () {
    final StorageOptimiserCore storageOptimiserCore = StorageOptimiserCore();
    late List<StorageSpace> storageSpaces;
    late List<File> files;
    late FileStorageMap result;

    setUp(() {
      // Additional setup goes here.
      StorageSpace storageA = StorageSpace(id: 'drive', freeSpace: 1000);
      StorageSpace storageB = StorageSpace(id: 'onedrive', freeSpace: 500);
      StorageSpace storageC = StorageSpace(id: 'dropbox', freeSpace: 300);

      File fileA = File(id: 'xxc112', size: 500);
      File fileB = File(id: 'xxc113', size: 500);
      File fileC = File(id: 'xxc114', size: 500);

      storageSpaces = List.of(<StorageSpace>[storageA, storageB, storageC]);
      files = List.of(<File>[fileA, fileB, fileC]);
    });

    test('Storage is enough for all files', () {
      result = storageOptimiserCore.distributeFiles(storageSpaces, files);
      expect(result.length, files.length);
    });

    // add more unit tests
  });
}
