import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_driven_development/src/feature_counter/domain/repository/counter.dart';

void main() {
  test('Testing domain layer', () {
    final counter = CounterBussinesLogic(value: 0);
    expect(counter.value, 0);
    counter.incrementNumber();
    expect(counter.value, 1);
    counter.decrementNumber();
    expect(counter.value, 0);
  });
  test('just testing increment number',() {
    final counter = CounterBussinesLogic(value: 0);
    counter.incrementNumber();
    expect(counter.value, 1);
  },);
  test('Testing incrementing a number 3 times', () {
     final counter = CounterBussinesLogic(value: 2);
     counter.incrementNumber();
     counter.incrementNumber();
     counter.incrementNumber();
     expect(counter.value, 5);
  },);
}