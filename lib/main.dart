import 'package:flutter/material.dart';
import 'package:isar_bug/db_goal_template.dart';
import 'package:isar_bug/goal_template_db_service.dart';

late final GoalTemplateDbService goalTemplateDbService;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  goalTemplateDbService = await GoalTemplateDbService.create();

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => goalTemplateDbService.replaceAll([
                DbGoalTemplate(
                  id: '1',
                  title: 'title',
                  description: 'description',
                  longDescription: 'longDescription',
                  isDefault: false,
                  isUnique: false,
                ),
              ]),
              child: const Text('Insert to DB'),
            ),
          ],
        ),
      ),
    );
  }
}
