// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:github_sign_in/github_sign_in.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:project/presentation/messenger/messenger.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({Key? key}) : super(key: key);

//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> _registerWithSocialMedia(SocialAuthType type) async {
//     try {
//       UserCredential? userCredential;

//       switch (type) {
//         case SocialAuthType.google:
//           userCredential = await signInWithGoogle();
//           break;
//         case SocialAuthType.github:
//           userCredential = await signInWithGitHub();
//           break;
//         case SocialAuthType.facebook:
//           userCredential = await signInWithFacebook();
//           break;
//       }

//       if (userCredential != null) {
//         final User? user = userCredential.user;
//         if (user != null) {
//           // Record the user in Firebase Authentication
//           // Redirect to the login page
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => LoginScreen(),
//             ),
//           );
//         }
//       }
//     } catch (e) {
//       // Handle authentication errors
//       print('Error: $e');
//     }
//   }

//   Future<UserCredential> signInWithGoogle() async {
//     // Trigger the authentication flow
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//     // Obtain the auth details from the request
//     final GoogleSignInAuthentication? googleAuth =
//         await googleUser?.authentication;

//     // Create a new credential
//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth?.accessToken,
//       idToken: googleAuth?.idToken,
//     );

//     // Once signed in, return the UserCredential
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }

//   Future<UserCredential> signInWithGitHub() async {
//   final GitHubSignIn gitHubSignIn = GitHubSignIn(
//     clientId: 'YOUR_GITHUB_CLIENT_ID',
//     clientSecret: 'YOUR_GITHUB_CLIENT_SECRET',
//     redirectUrl: 'https://my-project.firebaseapp.com/__/auth/handler',
//   );

//   final result = await gitHubSignIn.signIn(context);

//   if (result != null && result.token != null) {
//     final githubAuthCredential =
//         GithubAuthProvider.credential(result.token!);

//     return await FirebaseAuth.instance.signInWithCredential(githubAuthCredential);
//   } else {
//     throw Exception('GitHub sign-in failed');
//   }
// }

//   Future<UserCredential> signInWithFacebook() async {
//     // Trigger the sign-in flow
//     final LoginResult loginResult = await FacebookAuth.instance.login();

//     // Create a credential from the access token
//     final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

//     // Once signed in, return the UserCredential
//     return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Register'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () => _registerWithSocialMedia(SocialAuthType.google),
//               child: const Text('Sign Up with Google'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _registerWithSocialMedia(SocialAuthType.github),
//               child: const Text('Sign Up with GitHub'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => _registerWithSocialMedia(SocialAuthType.facebook),
//               child: const Text('Sign Up with Facebook'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// enum SocialAuthType {
//   google,
//   github,
//   facebook,
// }

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Your login screen UI goes here
//     );
//   }
// }
