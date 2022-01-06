import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, this.stdId, this.stdName}) : super(key: key);

  final String? stdId;
  final String? stdName;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(50)),
            const FaIcon(
              FontAwesomeIcons.checkCircle,
              color: Colors.pink,
              size: 70,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            const Text(
              'WELCOME',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.pink),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Text(
                    'รหัสนิสิต : ${widget.stdId!}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text(
                    'ชื่อ-สกุลนิสิต : ${widget.stdName!}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
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
            )
          ],
        ),
      ),
    );
  }
}
