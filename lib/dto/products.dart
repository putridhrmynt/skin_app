class Products {
  late int? id;
  late String name;
  late String detail;
  Products(this.id, this.name, this.detail);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'name': name,
      'detail': detail,
    };
    return map;
  }

  Products.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    detail = map['detail'];
  }
}
