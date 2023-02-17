import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc/counter/counter.dart';

import 'counter/view/counter_page.dart';

//CounterApp буде MaterialApp і вказує домашню сторінку як CounterPage.
//Ми розширюємо MaterialApp, оскільки CounterApp є MaterialApp. У більшості випадків ми збираємося створювати екземпляри StatelessWidget або StatefulWidget і створювати віджети в збірці, але в цьому випадку немає віджетів для створення, тому простіше просто розширити MaterialApp.
class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());
}
