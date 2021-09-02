import 'package:app/models/counter.model.dart';
import 'package:app/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterTextWidget extends HookWidget {
  const CounterTextWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('building CounterTextWidget');
    final counterModel = useProvider<CounterModel>(provider);
    return Text(
      '${counterModel.count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
