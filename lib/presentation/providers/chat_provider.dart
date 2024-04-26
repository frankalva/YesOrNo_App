import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  
  List<Message> messageList = [
    Message(text: "Hola como estas?", fromWho: FromWho.me),
    Message(text: "que tal estuvo tu dia", fromWho: FromWho.me),
    Message(text: "que tal estuvo tu dia", fromWho: FromWho.me),
    Message(text: "que tal estuvo tu dia", fromWho: FromWho.me),
    Message(text: "que tal estuvo tu dia", fromWho: FromWho.me),
    Message(text: "Todo bien y tu?", fromWho: FromWho.she),
  ];


  Future<void> sendMessage() async{
    //TODO
  }




}