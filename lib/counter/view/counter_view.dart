import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/counter/counter.dart';

//CounterView відповідає за рендеринг поточного підрахунку та рендеринг двох FloatingActionButtons для збільшення/зменшення лічильника.
//[StatelessWidget], який реагує на надані [CounterCubit] стан і сповіщає його у відповідь на введення користувача.

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('Counter'),),
      body: Center(
        //BlocBuilder використовується для обгортання віджета Text, щоб оновлювати текст кожного разу, коли змінюється стан CounterCubit.
        // Крім того, context.read<CounterCubit>() використовується для пошуку найближчого екземпляра CounterCubit.
        //Лише текстовий віджет загорнутий у BlocBuilder, оскільки це єдиний віджет, який потрібно перебудувати у відповідь на зміни стану в CounterCubit.
        // Уникайте непотрібного обгортання віджетів, які не потребують перебудови під час зміни стану.
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.displayMedium,);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
              key: const Key('counterView_decrement_floatingActionButton'),
              child: const Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}

