import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {
      
    });
  }

  void restablecer(){
    counter = 0;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      backgroundColor: Colors.purpleAccent[100],
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks Counter', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        restablecerFn: restablecer,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.restablecerFn,
  }) : super(key: key);

  final Function decreaseFn;
  final Function increaseFn;
  final Function restablecerFn;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton( 
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(), //otra manera de hacerlo
        ),

        //const SizedBox(width: 20,),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => restablecerFn(),
          
        ),

        //const SizedBox(width: 20,),

        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
          
        ),
      ],
    );
  }
}
