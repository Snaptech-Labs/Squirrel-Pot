import 'package:squirrel_pot/squirrel_pot.dart';
import 'package:squirrel_pot/src/model/File.dart';
import 'package:squirrel_pot/src/model/FileStorageMap.dart';
import 'package:squirrel_pot/src/model/StorageSpace.dart';
import 'package:test/test.dart';

void main() {
  group('Distribute Files Test', () {
    final StorageOptimiserCore storageOptimiserCore =
        new StorageOptimiserCore();
    late List<StorageSpace> storageSpaces;
    late List<File> files;
    late FileStorageMap result;

    setUp(() {
      // Additional setup goes here.
      StorageSpace storageA = new StorageSpace(id: 'drive', freeSpace: 1000);
      StorageSpace storageB = new StorageSpace(id: 'onedrive', freeSpace: 500);
      StorageSpace storageC = new StorageSpace(id: 'dropbox', freeSpace: 300);

      File fileA = new File(id: 'xxc112', size: 500);
      File fileB = new File(id: 'xxc113', size: 500);
      File fileC = new File(id: 'xxc114', size: 500);

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
