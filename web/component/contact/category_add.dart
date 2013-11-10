import 'dart:html';
import 'package:contacts_list/contacts.dart';
import 'package:polymer/polymer.dart';

@CustomTag('category-add')
class ContactAdd extends PolymerElement {
  @published Contacts contacts;

  ContactAdd.created() : super.created();

  add(Event e, var detail, Node target) {
    InputElement code = $['code'];
    InputElement name = $['name'];
    InputElement email = $['email'];
    InputElement phone = $['phone'];
    Element message = $['message'];
    var error = false;
    message.text = '';
    
    
    if (name.value.trim() == '') {
      message.text = 'contact name is mandatory; ${message.text}';
//     if (email.value.trim() == '') {
//        message.text = 'contact email is mandatory; ${message.text}';   
//        if (phone.value.trim() == '') {
//          message.text = 'contact phone is mandatory; ${message.text}';
      
          error = true;
    }
    if (!error) {
      var contact = new Contact();
      contact.code = code.value;
      contact.name = name.value;
      contact.email = email.value;
      contact.phone = phone.value;
      if (contacts.add(contact)) {
        message.text = 'added';
        contacts.order();
      } else {
        message.text = 'contact name already in use';
      }
    }
  }
}