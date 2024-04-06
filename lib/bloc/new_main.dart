import 'package:apple_store/bloc/home_bloc.dart';
import 'package:apple_store/bloc/home_event.dart';
import 'package:apple_store/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TestBloc extends StatelessWidget {
  const TestBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context).add(ClickEvent());
                },
                child: const Text('clicked'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is InitHome) {
                return const Text('0');
              } else if (state is UpdateHome) {
                return Text(state.x.toString());
              } else {
                return const Text('error');
              }
            },
          )
        ],
      ),
    );
  }
}
