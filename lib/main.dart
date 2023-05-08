import 'package:flutter/material.dart';
import 'package:mugo/form_selector.dart';
import 'package:mugo/randomizer_page.dart';
import 'package:mugo/text_field.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    int _max = 0;
    int _min = 0;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        '/randomizerPage': (context) => RandomizerPage(min: _min, max: _max)
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Number Generator",
          ),
          centerTitle: true,
        ),
        body: FormRangeSelector(
          formKey: formKey,
          minValueSetter: (value) => _min = value,
          maxValueSetter: (value) => _max = value,
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_forward),
            onPressed: () => {
                  if (formKey.currentState?.validate() == true)
                    {
                      formKey.currentState?.save(),
                      Navigator.of(context).push(MaterialPageRoute<void>(
                          builder: (context) =>
                              RandomizerPage(min: _min, max: _max)))
                    }
                }),
      ),
    );
  }
}
