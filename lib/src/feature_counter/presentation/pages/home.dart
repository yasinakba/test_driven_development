import 'package:flutter/material.dart';
import 'package:test_driven_development/src/feature_counter/data/repository/counter_repository.dart';
import 'package:test_driven_development/src/feature_counter/domain/repository/counter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late CounterBussinesLogic counter;
  late CounterRepositoryImplementation counterRepository;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter = CounterBussinesLogic(value: 0);
    counterRepository = CounterRepositoryImplementation();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter TDD'),centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter value is ${counter.value}',style: TextStyle(fontSize: 22),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              FloatingActionButton(onPressed: (){
                setState(() {
                  counter.incrementNumber();
                  counterRepository.updateCounterValue(counter.value);
                });
              },child: Icon(Icons.exposure_plus_1),),
              FloatingActionButton(onPressed: (){
                setState(() {
                  counter.decrementNumber();
                  counterRepository.updateCounterValue(counter.value);
                });
              },child: Icon(Icons.exposure_minus_1),),

            ],)
          ],
        ),
      ),
    );
  }
}
