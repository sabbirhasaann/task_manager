// import 'package:go_router/go_router.dart';
// import 'app_routes.dart';

// class AppRouter {
//   static final GoRouter router = GoRouter(
//     initialLocation: AppRoutes.initial,
//     routes: [
//       GoRoute(
//         path: AppRoutes.initial,
//         builder: (context, state) => const SplashScreen(),
//       ),
//       GoRoute(
//         path: AppRoutes.login,
//         builder: (context, state) => const LoginScreen(),
//       ),
//       // Nested routes or protected routes go here
//     ],
//     // Redirect logic for Auth (Clean Architecture approach)
//     redirect: (context, state) {
//       // Access your AuthBloc/Provider here to decide 
//       // if the user should go to Login or Dashboard
//       return null; 
//     },
//   );
// }