import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/counter/counter.dart';


import 'package:flutter_counter_bloc/counter/view/counter_view.dart';



//Віджет CounterPage відповідає за створення CounterCubit (який ми розглянемо далі) і надання його CounterView.

//[StatelessWidget], який відповідає за надання екземпляр [CounterCubit] до [CounterView].

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

// важливо відокремити або відокремити створення Cubit від споживання Cubit, щоб отримати код, який набагато легше тестувати та повторно використовувати.