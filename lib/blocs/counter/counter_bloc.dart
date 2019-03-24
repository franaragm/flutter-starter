import 'package:bloc/bloc.dart';
import 'package:starter/blocs/counter/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield currentState + 1;
        break;

      case CounterEvent.decrement:
        yield currentState - 1;
        break;
    }
  }

  void increment() => dispatch(CounterEvent.increment);
  void decrement() => dispatch(CounterEvent.decrement);
}
