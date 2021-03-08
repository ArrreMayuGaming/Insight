import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insight/auth/authservice.dart';
import 'package:insight/commonuser/commongate.dart';
import 'package:insight/employee/empgate.dart';

import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().onAuthStsateChanged,
          initialData: null,
        )
      ],
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Insight India',
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(
            Theme.of(context).textTheme,
          ),
          primaryIconTheme: IconThemeData(color: Colors.black),
        ),
        home: AppGate(),
      ),
    );
  }
}

class AppGate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseuser = context.watch<User>();

    if (firebaseuser != null) {
      return EmpGate();
    }
    return CommonGate();
  }
}
