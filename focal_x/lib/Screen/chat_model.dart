import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;
  IconData? icon;
  String text;

  ChatModel({
    required this.avatarUrl,
    required this.name,
    required this.datetime,
    required this.message,
    this.icon,
    required this.text,
  });

  static final List<ChatModel> dummyData = [
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/34.jpg",
        name: "Roger Hulg",
        datetime: "20:18",
        message: "Hey, can i ask something? i need your help please",
        icon: Icons.circle,
        text: '4'),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/49.jpg",
        name: "Hilman Nuris",
        datetime: "19:22",
        message: "thank’s for your information dude!",
        text: ''),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/women/77.jpg",
        name: "Erick Lawrence",
        datetime: "14:34",
        message: "Did you take the free illustration class yesterday?",
        icon: Icons.circle,
        text: '1'),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/81.jpg",
        name: "Jennifer Dunn",
        datetime: "11:05",
        message: "Hey Samuel, where did you get your point? can we exchange??",
        text: ''),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/83.jpg",
        name: "Mark",
        datetime: "09:46",
        message: "It totally makes sense to get some extra day-off.",
        icon: Icons.circle,
        text: '2'),
    ChatModel(
        avatarUrl: "https://randomuser.me/api/portraits/men/85.jpg",
        name: "Williams",
        datetime: "08:15",
        message: "It has been re-scheduled to next Saturday 7.30pm",
        text: '4'),
  ];
}
