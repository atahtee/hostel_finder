import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LipaMpesa extends StatefulWidget {
  const LipaMpesa({super.key});

  @override
  State<LipaMpesa> createState() => _LipaMpesaState();
}

class _LipaMpesaState extends State<LipaMpesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
            child: Container(
              child: Center(
                child: Text(
                  'Make Purchase',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    ' Contact the caretaker to facilitate',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                ),
                onPressed: () => print('pressed'),
                child: const Text('Duke Othuol : 0703487740',
              
                ),
              ))
        ],
      ),
    );
  }
}
class BoldenCart extends StatelessWidget {
  const BoldenCart({super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Container(),
      ),
    );
  }
}