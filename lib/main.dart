import 'package:clean_architecture_sample/config/injection_container.dart'
    as di;
import 'package:clean_architecture_sample/presentation/auth/cubit/auth_cubit.dart';
import 'package:clean_architecture_sample/presentation/auth/view/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  print("🐯start!");
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<AuthCubit>()),
      ],
      child: const MaterialApp(
        home: SignUpScreen(),
      ),
    );
  }
}
