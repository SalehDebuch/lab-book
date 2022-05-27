class Book {
  //data Type
  int? id;
  String? titleAr;

  Book({
    this.id,
    this.titleAr,
  });
  //method that assign values to respective datatype vairables
  factory Book.fromJson(Map<String, dynamic> jsonTests) {
    return Book(id: jsonTests['id'], titleAr: jsonTests['titleAr']);
  }
}
