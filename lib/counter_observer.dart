import 'package:bloc/bloc.dart';


//[BlocObserver] для програми-лічильника, яка спостерігає за всіма змінами стану.
class CounterObserver extends BlocObserver {
  const CounterObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change ){
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('print onChange func - ${bloc.runtimeType} $change');
  }
}