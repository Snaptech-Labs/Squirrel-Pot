class StorageSpace {
  String id;
  double freeSpace;

  StorageSpace({required this.id, required this.freeSpace});

  @override
  bool operator ==(covariant StorageSpace other) {
    return this.id == other.id;
  }

  @override
  String toString() {
    return 'StorageSpace {id: $id, freeSpace: $freeSpace}';
  }
}
