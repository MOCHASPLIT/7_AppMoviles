import 'package:flutter/material.dart';
import '../model/email.dart';

class DetailScreen extends StatelessWidget {
  final Email email;

  const DetailScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('App Email Flutter by WAGZ'),
        ),
        body: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('From: ${email.from}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10.0),
              Text(email.subject),
              const SizedBox(height: 10.0),
              Text(
                email.dateTime.toString().substring(0, 16),
              ),
              const SizedBox(height: 10.0),
              const Divider(color: Colors.green),
              const SizedBox(height: 10.0),
              Text(email.body,
                  style: const TextStyle(
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.justify),
            ],
          ),
        ));
  }
}
