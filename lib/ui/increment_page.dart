import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/increment_bloc.dart';
import '../bloc/increment_event.dart';
import '../bloc/increment_state.dart';

class IncrementPage extends StatelessWidget {
  const IncrementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController inputController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Halaman Increment',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: inputController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Input number here',
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<IncrementBloc, IncrementState>(
              builder: (context, state) {
                return Text(
                  '${state.number}',
                  style: const TextStyle(fontSize: 60, color: Colors.blue),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final input = int.tryParse(inputController.text);
                if (input != null) {
                  context.read<IncrementBloc>().add(IncrementNumber(input));
                  inputController.clear();
                }
              },
              child: const Text('Increment Number'),
            ),
            const Spacer(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
