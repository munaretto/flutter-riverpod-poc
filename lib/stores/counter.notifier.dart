import 'package:app/models/counter.model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterStoreNotifier extends StateNotifier<CounterModel> {
  static const _initialValue = CounterModel(0);

  CounterStoreNotifier() : super(_initialValue);

  void increment() {
    state = CounterModel(state.count + 1);
  }
}
