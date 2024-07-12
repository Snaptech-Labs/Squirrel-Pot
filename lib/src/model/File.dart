class File {
  String id;
  double size;

  File({required this.id, required this.size});

  @override
  bool operator ==(covariant File other) {
    return id == other.id;
  }

  @override
  int get hashCode => id.hashCode ^ size.hashCode;

  @override
  String toString() {
    return 'File {id: $id, size: $size}';
  }
}
