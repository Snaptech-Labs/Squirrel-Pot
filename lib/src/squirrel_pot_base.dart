import 'package:collection/collection.dart';
import 'package:squirrel_pot/src/model/file_model.dart';
import 'package:squirrel_pot/src/model/file_storage_map.dart';
import 'package:squirrel_pot/src/model/storage_space.dart';

///
/// This class implements the core algorithm for optimising the storage
///
class StorageOptimiserCore {
  // TODO: Future scope
  // OptimisationStrategy optimisationStrategy;

  StorageOptimiserCore();

  FileStorageMap distributeFiles(
      List<StorageSpace> storageSpaces, List<File> files) {
    // sort files in descending order based on their size
    // this approach will give best utilisation of storage
    // files.sort((a, b) => b['size'].compareTo(a['size']));

    // sort files in ascending order based on their size
    // this approach will give maximum files getting allocated to storage
    files.sort((a, b) => a.size.compareTo(b.size));

    FileStorageMap fileToStorageMap = FileStorageMap();

    //Create a priority queue to manage storage units based on free space
    PriorityQueue<StorageSpace> storageQueue =
        PriorityQueue((a, b) => b.freeSpace.compareTo(a.freeSpace));

    for (int i = 0; i < storageSpaces.length; i++) {
      storageQueue.add(storageSpaces[i]);
    }

    for (var file in files) {
      String fileId = file.id;
      double fileSize = file.size;
      bool allocated = false;

      // Create a temporary list to hold storages that were checked
      List<StorageSpace> tempStorages = [];

      while (storageQueue.isNotEmpty) {
        StorageSpace storage = storageQueue.removeFirst();
        double freeSpace = storage.freeSpace;

        if (fileSize <= freeSpace) {
          // allocate the file to this storage
          fileToStorageMap[file] = storage;
          storage.freeSpace -= fileSize;
          allocated = true;

          // Re-add the storage back to the queue with updated free space
          storageQueue.add(storage);
          break;
        } else {
          // Temporarily hold this storage as it doesn't have enough space for
          // current file
          tempStorages.add(storage);
        }
      }

      // Re-add all temporarily held storage back to the queue
      for (var tempStorage in tempStorages) {
        storageQueue.add(tempStorage);
      }

      // If not allocated, handle the case where there's
      //not enough space for this file
      if (!allocated) {
        print(
            'Error: Not enough storage space for file $fileId of size $fileSize');
        // add more handling code and find a way to return rejected files.
      }
    }

    return fileToStorageMap;
  }
}
