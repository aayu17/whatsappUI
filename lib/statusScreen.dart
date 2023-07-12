import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ListTile(
                leading: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://scontent-ccu1-2.cdninstagram.com/v/t51.2885-19/290291614_1172260553347278_2277120414787689664_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-ccu1-2.cdninstagram.com&_nc_cat=106&_nc_ohc=Ipw66LHTgaIAX8ms4d1&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD0GFl4AVbQGdps1ATpBQDwiumQzLpj5dixS_npxGAnpw&oe=64A936F7&_nc_sid=8b3546"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Text(
                  "Tap to add status update",
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Recent updates",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
               ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage("assets/images/profile.jpg"),
                  // backgroundColor: Color.fromRGBO(32, 153, 139, 0.984),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Pratham",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                subtitle: Text(
                  "Today, 2:45 am",
                  style: TextStyle(color: Colors.grey.shade800),
                ),
              ),
              Divider(),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(LineAwesomeIcons.lock,color: Colors.black,),
                    Text("Your status updates are ",style: TextStyle(fontSize: 12),),
                    Text("end-to-end encrypted",style: TextStyle(color:Colors.green,fontSize: 12),),
                  ],
                ),
              
            ],
          ),
          Positioned(
            bottom: 80,
            right: 15,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade200,
              ),
              child: const Icon(
                LineAwesomeIcons.pen,
                color: Colors.black54,
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 15,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromRGBO(32, 153, 139, 0.984),
              ),
              child: const Icon(
                Icons.camera_alt,
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
