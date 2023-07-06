
import 'package:flutter/material.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({super.key});

  @override
  State<IntervalProgressBar> createState() => _IntervalProgressBarState();
}

class _IntervalProgressBarState extends State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _bar(),
        _label(),
      ],
    );
  }

Widget _bar(){
  return Column(
    children: [
      _interval(customColor: const Color.fromARGB(255, 0, 55, 166)),    
        _separator(),
      _interval(customColor: const Color.fromARGB(255, 0, 130, 166)),    
        _separator(),
       _interval(customColor: const Color.fromARGB(255, 0, 166, 22)),    
        _separator(),
      _interval(customColor: const Color.fromARGB(255, 0, 255, 34)),    
        _separator(),
      _interval(customColor: const Color.fromARGB(255, 162, 255, 0)),    
        _separator(),
      _interval(customColor: const Color.fromARGB(255, 255, 247, 0)),    
        _separator(),
      _interval(customColor:  const Color.fromARGB(255, 235, 205, 12)),    
        _separator(),
           _interval(customColor: const Color.fromARGB(255, 255, 158, 2)),
       _separator(),
       _interval(customColor: const Color.fromARGB(255, 167, 106, 10)),
       _separator(),
      _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
      _separator(),
    ]
  );
}

Widget _interval({required Color customColor }){
  return SizedBox(
    width: 22.0,
    height: 3.0,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: customColor,
      ),
    ),
    );
}

Widget _separator(){
  return const SizedBox(
    height: 3,
  );
}
  Widget _label(){
    return Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}