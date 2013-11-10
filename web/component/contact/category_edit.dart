import 'dart:html';
import 'package:contacts_list/contacts.dart';
import 'package:polymer/polymer.dart';

@CustomTag('category-edit')
class ContactEdit extends PolymerElement {
  @published Contacts contacts;
  @published Contact contact;
  @published String name;
  @published String email;
  @published String phone;
  ContactEdit.created() : super.created();

  enteredView() {
    super.enteredView();
    name = contact.name;
    email = contact.email;
    phone = contact.phone;
  }

  update(Event e, var detail, Node target) {
    contact.name = name;
    contact.email = email;
    contact.phone = phone;
    contacts.order(); // to see a new description in the list
    var polymerApp = querySelector('#polymer-app');
    var contactTable = polymerApp.shadowRoot.querySelector('#category-table');
    contactTable.showEdit = false;
  }
}