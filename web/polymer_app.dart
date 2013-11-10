import 'dart:html';
import 'dart:convert';
import 'package:contacts_list/contacts.dart';
import 'package:polymer/polymer.dart';

@CustomTag('polymer-app')
class PolymerApp extends PolymerElement {
  @observable Contacts contacts;

  PolymerApp.created() : super.created() {
    var contactModel = new ContactModel();
    contacts = contactModel.contacts;

    // load data
    String json = window.localStorage['contacts_list'];
    if (json == null) {
      contactModel.init();
    } else {
      contacts.fromJson(JSON.decode(json));
    }

    contacts.internalList = toObservable(contacts.internalList);
  }

  save(Event e, var detail, Node target) {
    window.localStorage['contacts_list'] =
        JSON.encode(contacts.toJson());
  }
}