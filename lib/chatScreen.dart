import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/chatData.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  bool isUrl(String input) {
    final urlPattern = RegExp('^https?://');
    return urlPattern.hasMatch(input);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            itemCount: dummy.length,
            itemBuilder: ((context, index) => Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: isUrl(dummy[index].photo)
                            ? NetworkImage(dummy[index].photo)
                            : AssetImage(dummy[index].photo) as ImageProvider,
                      ),
                      title: Text(
                        dummy[index].name,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: dummy[index].grey_tick
                          ? Row(
                              children: [
                                Icon(Icons.done_all),
                                Text(" " + dummy[index].message)
                              ],
                            )
                          : Row(
                              children: [
                                Icon(
                                  Icons.done_all,
                                  color: Colors.blueAccent,
                                ),
                                Text(" " + dummy[index].message),
                              ],
                            ),
                      trailing: Text(dummy[index].time),
                    ),
                  ],
                )),
          ),
          Positioned(
                  bottom: 10,
                  right: 15,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(32, 153, 139, 0.984),),
                    child: const Icon(
                      Icons.chat,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
