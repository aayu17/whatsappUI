import 'package:flutter/material.dart';
import 'package:whatsapp_ui/LogIn/enterNumber.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatsapp_ui/whatsappAppBar.dart';

class EnterOtp extends StatelessWidget {
  var number;
  var otp;
  EnterOtp(this.number, {super.key});

  var _otp = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text("Verifying your phone number",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 9, 155, 14),
                      fontSize: 15))),
          backgroundColor: Colors.white,
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 0,
                    child: Text("Help"),
                  ),
                ];
              },
            ),
          ]),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Waiting to automatically detect an SMS sent to"),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+91 $number. ",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                Text("Wrong number?",
                    style: TextStyle(color: Colors.blue.shade300)),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.green),
                ),
              ),
              child: TextField(
                onChanged: (value) {
                  otp = value;
                },
                controller: _otp,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "--- ---",
                  hintStyle: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              "Enter 6-digit code",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Didn't receive code ?",
              style: TextStyle(
                  color: Colors.green.shade800, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () async {
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: EnterNumber.verify,
                                smsCode: otp);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WhatsAppAppBar()),
                        );
                      } catch (e) {
                        print("No");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      primary: Color.fromARGB(255, 5, 166, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    child: Text("Submit")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
