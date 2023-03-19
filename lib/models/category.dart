class Category {
  String? name;
  String? icon;

  Category.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    icon = map['icon'];
  }

  toMap() {
    return {
      'name': name,
      'icon': icon,
    };
  }
}
