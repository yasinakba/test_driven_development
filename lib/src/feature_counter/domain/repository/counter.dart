/// increment
/// decrement
///
///

class CounterBussinesLogic {
  int value;
  CounterBussinesLogic({required this.value});

  /// a function to increment the value
  void incrementNumber(){
    value++;
  }
  /// a function to decrement the value
  void decrementNumber(){
    value--;
  }
}