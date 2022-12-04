import 'package:flutter/material.dart';
import '../model/backend.dart';
import '../model/email.dart';
import '../widgets/email_widget.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key, required this.title});

  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  //LLamamos al método getEmails desde ../model/backend.dart
  //Y el resultado de esa lista de emails lo almacenamos en la variable emails.
  var emails = Backend().getEmails();

  //Método en el cual pasamos la id del email y lo marcamos como leído.
  //Además cambiamos el estado de la variable emails, la misma que tiene almacenada la lista de emails.
  //Esto nos sirve para que la pantalla list_screen se actualice.
  void markEmailAsRead(int id) {
    Backend().markEmailAsRead(id);
    setState(() {
      emails = Backend().getEmails();
    });
  }

  //Método en el que pasamos la id del email para eliminarlo temporalmente de nuestra app.
  //Además cambiamos el estado de la variable emails, la misma que tiene almacenada la lista de emails.
  //Esto nos sirve para que la pantalla list_screen se actualice.

  void deleteEmail(int id) {
    Backend().deleteEmail(id);
    setState(() {
      emails = Backend().getEmails();
    });
  }

  void showDetail(Email email) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(email: email);
    }));

    Backend().markEmailAsRead(email.id);
    setState(() {
      emails = Backend().getEmails();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: emails.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: Colors.black,
        ),
        itemBuilder: (BuildContext context, int index) => EmailWidget(
          email: emails[index],
          onTap: showDetail,
          onLongPress: markEmailAsRead,
          onSwipe: deleteEmail,
        ),
      ),
    );
  }
}
