import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Flutter Auth Test',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _idC;
  late TextEditingController _pwC;

  // FirebaseAuth auth=FirebaseAuth.instance;
  final _formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _idC = TextEditingController();
    _pwC = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Auth With Firebase',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _idC,
                          validator: (val) => val!.isNotEmpty
                              ? null
                              : "Please Enter a email address.",
                          decoration: InputDecoration(
                              icon: Icon(Icons.account_circle),
                              labelText: 'id'),
                        ),
                        TextFormField(
                          controller: _pwC,
                          validator: (val) => val!.isNotEmpty
                              ? null
                              : "Please Enter a password.",
                          decoration: InputDecoration(
                              icon: Icon(Icons.vpn_key), labelText: 'pw'),
                        ),
                        ButtonBar(
                          children: [
                            TextButton(
                              child: Text('login'),
                              onPressed: () {},
                            ),
                            TextButton(
                              child: Text('register'),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {}
}
