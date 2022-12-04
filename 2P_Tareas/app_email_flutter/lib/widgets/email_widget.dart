import 'package:flutter/material.dart';
import '../model/email.dart';

class EmailWidget extends StatelessWidget {
  final Email email;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const EmailWidget(
      {super.key,
      required this.email,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(email.id);
      },
      onLongPress: () {
        onLongPress(email.id);
      },
      onTap: () {
        onTap(email);
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 100.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 15.0,
                decoration: BoxDecoration(
                    color: email.read ? Colors.transparent : Colors.green,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(email.dateTime.toString()),
                  Text(email.from,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: email.read ? Colors.black : Colors.green)),
                  Text(
                    email.subject,
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
