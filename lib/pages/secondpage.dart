import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:navigator_routing/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _stdID = TextEditingController();
  final TextEditingController _stdName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'กรุณาป้อนข้อมูลของคุณ',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.pink),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  stdID(),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  stdName()
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          var route = MaterialPageRoute(
                            builder: (context) => ThirdPage(
                              stdId: _stdID.text,
                              stdName: _stdName.text,
                            ),
                          );
                          Navigator.push(context, route);
                          Fluttertoast.showToast(
                            msg: 'Successed',
                            timeInSecForIosWeb: 3,
                          );
                        }
                      },
                      child: const Text(
                        'ตกลง',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'กลับ',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox stdName() {
    return SizedBox(
      width: 350,
      child: TextFormField(
        controller: _stdName,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกชื่อ-สกุล';
          }
        },
        decoration: const InputDecoration(
          label: Text('ชื่อ-สกุล'),
          prefixIcon: Icon(Icons.account_box),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.pink,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  SizedBox stdID() {
    return SizedBox(
      width: 350,
      child: TextFormField(
        controller: _stdID,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกรหัสนิสิต';
          }
        },
        maxLength: 9,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          label: Text('รหัสนิสิต'),
          prefixIcon: Icon(Icons.article),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.pink,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
