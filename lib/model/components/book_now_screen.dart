import 'package:finderhostel/Route/AppRouteName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class BookNowScreen extends StatefulWidget {
  const BookNowScreen({super.key});

  @override
  State<BookNowScreen> createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Choose Your Plan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Passion',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ksh 7000',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mango',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ksh 7500',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ))
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Passion',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ksh 7000',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  height: 65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mango',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Ksh 7500',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.paypal,
                  color: Colors.indigo,
                ),
                title: Text('Paypal'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.payments,
                  color: Colors.indigo,
                ),
                title: Text('Google '),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(35)),
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(
                  Icons.payments,
                  color: Colors.indigo,
                ),
                title: InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRouteName.lipaMpesa);
                    },
                    child: Text('MPESA ')),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            )
          ],
        ),
      ),
    );
  }
}
