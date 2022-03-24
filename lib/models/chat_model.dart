import 'package:flutter/foundation.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarurl;
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarurl});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "naddosh",
      message: "hello my love",
      time: "12:00",
      avatarurl:
          "https://tse4.mm.bing.net/th?id=OIP.t1kKfJMi8BB1w60acyuk9wHaLH&pid=Api&P=0&w=104&h=156"),
  new ChatModel(
      name: "sabra",
      message: "sabahoooooooooo azmeily",
      time: "10:30",
      avatarurl:
          "https://www.gannett-cdn.com/-mm-/d78a0cc0acdad061ad5b53c83c90f98ee5f87d74/c=12-0-380-491&r=537&c=0-0-534-712/local/-/media/2017/10/25/SNJGroup/CherryHill/636445275104114460-missingboy1.png"),
  new ChatModel(
      name: "Mina",
      message: "Hi Ahmed",
      time: "10:30",
      avatarurl:
          "https://tse2.mm.bing.net/th?id=OIP.zpFGxbpuO_OTy13WXi2MtQHaHT&pid=Api&P=0&w=184&h=182"),
  new ChatModel(
      name: "Shehab",
      message: "hello my friend",
      time: "11:30",
      avatarurl:
          "https://tse4.mm.bing.net/th?id=OIP.UG6cx9xE7X3my_vvYRDTzwHaEM&pid=Api&P=0&w=273&h=154"),
  new ChatModel(
      name: "Kero Ashraf",
      message: "sabaaaah",
      time: "12:30",
      avatarurl:
          "https://tse2.mm.bing.net/th?id=OIP.dEZ60FY9NTf-h8gj13iLdAHaE6&pid=Api&P=0&w=233&h=154"),
  new ChatModel(
      name: "Mary",
      message: "Hello Ahmed",
      time: "1:30",
      avatarurl:
          "https://tse2.mm.bing.net/th?id=OIP.IxeBCFJHgo746jthq7B84AAAAA&pid=Api&P=0&w=111&h=166"),
  new ChatModel(
      name: "merna",
      message: "Hi Ahmed",
      time: "2:30",
      avatarurl:
          "https://www.storypick.com/wp-content/uploads/2014/08/Cover7.jpg"),
  new ChatModel(
      name: "Fatma",
      message: "Good Morning",
      time: "3:30",
      avatarurl: "https://engineering.unl.edu/images/staff/Kayla-Person.jpg"),
];
