import 'package:flutter/material.dart';
import 'package:whatsapp_ui/data/callData.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 10),
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(32, 153, 139, 0.984),
              ),
              child: const Icon(
                Icons.link,
                color: Colors.white,
                size: 30,
              ),
            ),
            title: const Padding(
              padding: EdgeInsets.only(bottom: 6.0),
              child: Text(
                "Create call link",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: Text(
              "Share a link for your whatsapp call",
              style: TextStyle(color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22.0),
            child: Text(
              "Recent ",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
      ]),
    );

    // ],
    //   ),
    // ],
    // ),
    // );
  }
}
