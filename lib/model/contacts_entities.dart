part of contacts;

class Contact extends ConceptEntity<Contact> {
  String name;
  String email;
  String phone;

  Contact newEntity() => new Contact();

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    name: $name}\n'
           '    email: $email}\n'
           '    phone: $phone}\n'
           '  }\n';
  }

  Map<String, Object> toJson() {
    Map<String, Object> entityMap = super.toJson();
    entityMap['name'] = name;
    entityMap['email'] = email;
    entityMap['phonne'] = phone;
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
    super.fromJson(entityMap);
    name = entityMap['name'];
    email = entityMap['email'];
    phone = entityMap['phone'];
  }

  bool get onProgramming =>
      name.contains('name') ? true : false;
}

class Contacts extends ConceptEntities<Contact> {
  Contacts newEntities() => new Contacts();
  Contact newEntity() => new Contact();
}
