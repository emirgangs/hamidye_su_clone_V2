import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screens/LoginScreen.dart';
import '../screens/bottomNavigation.dart';
import 'cats_cubit.dart';
import 'cats_state.dart';

class BlocCatsView extends StatefulWidget {
  const BlocCatsView({super.key});

  @override
  State<BlocCatsView> createState() => _BlocCatsViewState();
}

class _BlocCatsViewState extends State<BlocCatsView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CatsCubit>(
      create: (context) => CatsCubit(),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatsCubit, CatsState>(
      builder: (context, state) {
        if (state is CatsInitial) {
          return const LoginscreenWidget();
        } else if (state is CatsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is CatsCompleted) {
          return const BottomNavigationbar();
        } else {
          final error = state as CatsError;
          return Text(error.message);
        }
      },
    );
  }
}
