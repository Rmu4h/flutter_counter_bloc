import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_counter_bloc/app.dart';
import 'package:flutter_counter_bloc/counter_observer.dart';

//Ми ініціалізуємо щойно створений CounterObserver і викликаємо runApp за допомогою віджета CounterApp, який ми розглянемо далі.
void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}

