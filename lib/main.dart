import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('АВТОРИЗАЦИЯ'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: const Center(
            child: Column(children: [
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.login),
                hintText: "Введите логин",
                helperText: "Логин используется для входа в систему",
              )),
              SizedBox(
                height: 1,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.login),
                hintText: "Введите пароль",
                helperText: "Пароль используется для входа в систему",
              )),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Вы ещё не зарегистрированы? Зарегистрируйтесь!'),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
