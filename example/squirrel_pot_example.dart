import 'package:squirrel_pot/squirrel_pot.dart';
import 'package:squirrel_pot/src/model/File.dart';
import 'package:squirrel_pot/src/model/FileStorageMap.dart';
import 'package:squirrel_pot/src/model/StorageSpace.dart';

void main() {
  StorageSpace storageA = new StorageSpace(id: 'drive', freeSpace: 1000);
  StorageSpace storageB = new StorageSpace(id: 'onedrive', freeSpace: 500);
  StorageSpace storageC = new StorageSpace(id: 'dropbox', freeSpace: 300);

  File fileA = new File(id: 'xxc112', size: 500);
  File fileB = new File(id: 'xxc113', size: 500);
  File fileC = new File(id: 'xxc114', size: 500);
  File fileD = new File(id: 'xxc115', size: 250);

  List<StorageSpace> storageSpaces =
      List.of(<StorageSpace>[storageA, storageB, storageC]);
  List<File> files = List.of(<File>[fileA, fileB, fileC, fileD]);

  StorageOptimiserCore storageOptimiserCore = new StorageOptimiserCore();

  Stopwatch stopwatch = new Stopwatch()..start();
  FileStorageMap result =
      storageOptimiserCore.distributeFiles(storageSpaces, files);
  print(
      'Distribute file function executed in : ${stopwatch.elapsed} for '
      +'${files.length} files and ${storageSpaces.length} storage space');
  stopwatch.stop();
  
  print(result);
}
