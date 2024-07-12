import 'package:squirrel_pot/squirrel_pot.dart';
import 'package:squirrel_pot/src/model/file_model.dart';
import 'package:squirrel_pot/src/model/file_storage_map.dart';
import 'package:squirrel_pot/src/model/storage_space.dart';

void main() {
  StorageSpace storageA = StorageSpace(id: 'drive', freeSpace: 1000);
  StorageSpace storageB = StorageSpace(id: 'onedrive', freeSpace: 500);
  StorageSpace storageC = StorageSpace(id: 'dropbox', freeSpace: 300);

  File fileA = File(id: 'xxc112', size: 500);
  File fileB = File(id: 'xxc113', size: 500);
  File fileC = File(id: 'xxc114', size: 500);
  File fileD = File(id: 'xxc115', size: 250);

  List<StorageSpace> storageSpaces =
      List.of(<StorageSpace>[storageA, storageB, storageC]);
  List<File> files = List.of(<File>[fileA, fileB, fileC, fileD]);

  StorageOptimiserCore storageOptimiserCore = StorageOptimiserCore();

  Stopwatch stopwatch = Stopwatch()..start();
  FileStorageMap result =
      storageOptimiserCore.distributeFiles(storageSpaces, files);
  print(
      'Distribute file function executed in : ${stopwatch.elapsed} for '
      '${files.length} files and ${storageSpaces.length} storage space');
  stopwatch.stop();
  
  print(result);
}
