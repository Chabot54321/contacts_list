part of contacts;

class ContactModel extends ConceptModel {
  static final String contact = 'Contact';

  Map<String, ConceptEntities> newEntries() {
    var contacts = new Contacts();
    var map = new Map<String, ConceptEntities>();
    map[contact] = contacts;
    return map;
  }

  Contacts get contacts => getEntry(contact);

  init() {
    var Contact1 = new Contact();
    Contact1.code = '1';
    Contact1.name = 'Thomas';
    Contact1.email = 'thomas@gmail.com';
    Contact1.phone = '333-444-4444';
    contacts.add(Contact1);

    var Contact2 = new Contact();
    Contact2.code = '2';
    Contact2.name = 'Joey';
    Contact2.email = 'joey@gmail.ca';
    Contact2.phone = '444-444-4445';
    contacts.add(Contact2);
    
    var Contact3 = new Contact();
    Contact3.code = '3';
    Contact3.name = 'Réginal';
    Contact3.email = 'reginallorignalloriginal@gmail.ca';
    Contact3.phone = '444-554-5445';
    contacts.add(Contact3);
    
    

    contacts.order();
  }
}
