class StorageSpace {
  String id;
  double freeSpace;

  StorageSpace({required this.id, required this.freeSpace});

  @override
  bool operator ==(covariant StorageSpace other) {
    return id == other.id;
  }

  @override
  int get hashCode => id.hashCode ^ freeSpace.hashCode;

  @override
  String toString() {
    return 'StorageSpace {id: $id, freeSpace: $freeSpace}';
  }
}
