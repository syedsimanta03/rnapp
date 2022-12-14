import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rnapp/randomizer_change_notifier.dart';
import 'package:rnapp/range_selector_page.dart';


void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (context) => RandomizerChangeNotifier(),
      child: MaterialApp(
        title: 'Randomizer',
        home: RangeSelectorPage(),
      ),
    );
  }
}


