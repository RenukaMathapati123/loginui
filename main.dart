import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wudgress_project/sign_in_screen.dart';
 
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   
  // initializing the firebase app
  await Firebase.initializeApp(); 
   
  // calling of runApp
  runApp(GoogleSignIn());  
}
 
class GoogleSignIn extends StatefulWidget {
  GoogleSignIn({Key? key}) : super(key: key);
   @override
  _GoogleSignInState createState() => _GoogleSignInState();
}
 
class _GoogleSignInState extends State<GoogleSignIn> {
  @override
  Widget build(BuildContext context) {
     
    // we return the MaterialApp here ,
    // MaterialApp contain some basic ui for android ,
    return MaterialApp(   
       
      //materialApp title
      title: 'GEEKS FOR GEEKS', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
       
      // home property contain SignInScreen widget
      home: SignInScreen(),  
    );
  }
}
































































































// import 'package:flutter/material.dart';
// import 'package:wudgress_project/login_page.dart';
// import 'package:wudgress_project/spalsh_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Wudgress',
//       theme: ThemeData(
//       primarySwatch: Colors.blue,
//       ),
//       home:LoginPage(),
//     );
//   }
// }


