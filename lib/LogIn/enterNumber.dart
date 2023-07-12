import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:whatsapp_ui/LogIn/otp.dart';

class EnterNumber extends StatefulWidget {
  const EnterNumber({super.key});
  static String verify = "";

  @override
  State<EnterNumber> createState() => _EnterNumberState();
}

class _EnterNumberState extends State<EnterNumber> {
  var code;
  var code2;
  var phone;
  @override
  void initState() {
    super.initState();
    code = null;
    code2 = null;
  }

  @override
  Widget build(BuildContext context) {
    var _number = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text("Enter your phone number",
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
                    child: Text("Link to exixting account"),
                  ),
                  const PopupMenuItem(
                    value: 1,
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
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("WhatsApp will need to verify your account."),
                Text(
                  "What's my",
                  style: TextStyle(color: Colors.blue.shade300),
                ),
              ],
            ),
            Text("number?", style: TextStyle(color: Colors.blue.shade300)),
            TextButton(
              onPressed: () {
                showCountryPicker(
                    context: context,
                    onSelect: (Country value) {
                      setState(() {
                        code = value.phoneCode.toString();
                        code2 = value.displayNameNoCountryCode.toString();
                      });
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    code2 == null ? 'India ' : '$code2 ',
                    style: TextStyle(color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 240,
              child: Divider(
                thickness: 2,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 35,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 6,
                      child: TextField(
                        controller: TextEditingController(
                          text: code == null ? '+91' : '+$code ',
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      // textAlign: TextAlign.center,
                      onChanged: (value) {
                        phone = value;
                      },
                      controller: _number,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "phone number",
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 240,
              child: Divider(
                thickness: 2,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Carrier charges may apply",
                style: TextStyle(color: Colors.grey.shade700)),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: code == null ? '+91'+phone : '+$code' + phone,
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          EnterNumber.verify = verificationId;

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EnterOtp(_number.text.toString())),
                          );
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      primary: Color.fromARGB(255, 5, 166, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    child: Text("Next")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
