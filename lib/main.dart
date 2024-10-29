import 'package:flutter/material.dart';
import 'package:nubank/conta/conta.dart';
import 'package:nubank/home/home.dart';
import 'package:nubank/profile.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';


Future<void> main() async {
  const keyApplicationId = 'PBcMNDjmfNsJlLYwlU22PqlBMIWz79jwbNT7ukvm';
  const keyClientKey = 'UDobuy569Dd4f2YCsnGu4HaUXVwv1mUBRXXOPfUr';
  const keyParseServeUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(keyApplicationId, keyParseServeUrl, clientKey: keyClientKey, debug: true);

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/conta': (context) => const Conta(),
      },
    );
  }
}
