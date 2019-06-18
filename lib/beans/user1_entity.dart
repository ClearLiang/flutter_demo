class User1Entity {
  List<User1Person> persons;
  int count;

  User1Entity({this.persons, this.count});

  User1Entity.fromJson(Map<String, dynamic> json) {
    if (json['persons'] != null) {
      persons = new List<User1Person>();
      (json['persons'] as List).forEach((v) {
        persons.add(new User1Person.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.persons != null) {
      data['persons'] = this.persons.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class User1Person {
  String name;
  String email;

  User1Person({this.name, this.email});

  User1Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}
