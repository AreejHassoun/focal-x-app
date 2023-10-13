import 'package:flutter/material.dart';

import '../chat_model.dart';
import 'package:badges/badges.dart' as badges;

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Message '),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                const Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.name),
                      const SizedBox(
                        width: 90.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 12.0),
                      ),
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 14.0,
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                  // trailing: Icon(_model.icon, color: Color(0xff0082cd) , ) ,

                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      badges.Badge(
                        badgeContent: Text(_model.text,
                            style: TextStyle(color: Colors.white)),
                        badgeStyle: badges.BadgeStyle(
                            badgeColor: Color(0xff0082cd),
                            shape: badges.BadgeShape.circle,
                            borderRadius: BorderRadius.zero),
                        // child: Icon(_model.icon, color: Color(0xff0082cd)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
