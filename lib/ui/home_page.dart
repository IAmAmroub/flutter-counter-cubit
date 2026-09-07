import 'package:counter_cubit_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Counter Cubit App"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: ((context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Counter Value",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '$state',
                  style: const TextStyle(fontSize: 36),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (() {
                        context.read<CounterCubit>().decrement();
                      }),
                      child: const Text(
                        "-",
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        onPressed: (() {
                          context.read<CounterCubit>().increment();
                        }),
                        child: const Text(
                          "+",
                          style: TextStyle(fontSize: 48),
                        )),
                  ],
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
