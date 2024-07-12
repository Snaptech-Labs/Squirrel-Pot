class File {
  String id;
  double size;

  File({required this.id, required this.size});

  @override
  bool operator ==(covariant File other) {
    return this.id == other.id;
  }

  @override
  String toString() {
    return 'File {id: $id, size: $size}';
  }
}
