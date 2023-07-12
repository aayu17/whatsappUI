import 'package:flutter/material.dart';
import 'package:whatsapp_ui/callScreen.dart';
import 'package:whatsapp_ui/chatScreen.dart';
import 'package:whatsapp_ui/statusScreen.dart';

class WhatsAppAppBar extends StatelessWidget {
  const WhatsAppAppBar({super.key});
  //  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double peopleWidth = screenSize / 30;
    double yourWidth = (screenSize - peopleWidth) / 5;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(7, 94, 84, 1),
          title: Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "WhatsApp",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.camera_alt),
                        Padding(padding: EdgeInsets.only(left: 15)),
                        Icon(Icons.search),
                        PopupMenuButton(
                          itemBuilder: (context) {
                            return [
                              const PopupMenuItem(
                                value: 0,
                                child: Text("New group"),
                              ),
                              const PopupMenuItem(
                                value: 1,
                                child: Text("New broadcast"),
                              ),
                              const PopupMenuItem(
                                value: 0,
                                child: Text("Linked devices"),
                              ),
                              const PopupMenuItem(
                                value: 0,
                                child: Text("Starred messages"),
                              ),
                              const PopupMenuItem(
                                value: 0,
                                child: Text("Payments"),
                              ),
                              const PopupMenuItem(
                                value: 0,
                                child: Text("Settings"),
                              ),
                            ];
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          
          children: [
            Container(
              
              color: Color.fromRGBO(7, 94, 84, 1),
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(
                    horizontal:
                        (screenSize - (peopleWidth + yourWidth * 3)) / 8),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                // controller: _tabController,
                isScrollable: true,
                tabs: [
                  Container(
                    width: peopleWidth,
                    alignment: Alignment.centerLeft,
                    child: Tab(
                      icon: Icon(Icons.people),
                    ),
                  ),
                  Container(
                    width: yourWidth,
                    child: Tab(
                      child: Text(
                        "Chats",
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Container(
                    width: yourWidth,
                    child: Tab(
                      child: Text(
                        "Status",
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Container(
                    width: yourWidth,
                    child: Tab(
                      child: Text(
                        "Calls",
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                child: TabBarView(children: [
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.white,
                child:  ChatScreen(),
              ),
              Container(
                color: Colors.white,
                child: StatusScreen(),
              ),
              Container(
                color: Colors.black,
                child: CallScreen(),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
