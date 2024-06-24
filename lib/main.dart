import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_frames/authentication/presentation/bloc/authentication/auth_bloc.dart';
import 'package:flutter_frames/authentication/presentation/pages/auth/sign_in_page.dart';
import 'package:flutter_frames/authentication/presentation/pages/auth/sign_up_page.dart';
import 'package:flutter_frames/authentication/presentation/pages/home.dart';
import 'package:flutter_frames/firebase_options.dart';
import 'package:flutter_frames/injection_container.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_)=> di.sl<AuthBloc>()..add(CheckLoggingInEvent()),
        child: BlocBuilder<AuthBloc , AuthState>(
          builder: (context , state) {
            if(state is SignedInPageState){
              return const MaterialApp(
                title: 'Flutter Frames',
                debugShowCheckedModeBanner: false,
                home:  HomePage(),
              );
            }else{
              return  MaterialApp(
                title: 'Flutter Frames',
                theme: ThemeData(
                  useMaterial3: true,
                  colorSchemeSeed: Colors.blue
                ),
                debugShowCheckedModeBanner: false,
                home: const SignIn(),
              );
            }
          }
        )
    );
  }
}

