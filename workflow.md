# Workflow

1.  Now I am adding multiple language localization{

        1.  Add the following configuration into pubspec.yml (Add dependencies)
        dependencies:
            flutter_localizations:
                sdk: flutter
            intl: ^0.19.0 # Check for latest version / any

        flutter:
            generate: true
        2. Configure Localization: Create a l10n.yaml file in your project root to define the directory for your translation files and the output file name.
        I have created l10n.yml file in the root folder.

        3. Create Translation Files: Use the Application Resource Bundle (ARB) format (standard JSON-like files) for each language. For example, create lib/l10n/app_en.arb for English and lib/l10n/app_es.arb for Spanish.
        I have added lib/l10n folder containing app_en.arb and app_bn.arb into core/config folder.
    
        4. Run `flutter gen-l10n` command this will make language localization possilbe

        5. Integrate with material app

        import 'l10n/app_localizations.dart';
        MaterialApp(
            // locale: Locale(_languageCode),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
        )
    }      

2.  App Route Setting Routes in different file (Without extra package install){

    1.  Add router folder into lib/core/config/router/
    2.  Add app_routes.dart, route_generator.dart, router_manager.dart (for external package like go-router)
    3.  add routes in app_routes.dart like
        ```dart
        class AppRoutes {
            static const String initial = '/';
        }
        ```
    4.  add route generator in route_generator.dart
        ```dart
        import 'package:flutter/material.dart';
        import 'app_routes.dart';
        // import your screens
        import 'features/auth'
        class RouteGenerator{
            static Route<dynamic> generateRoute(RouteSettings.settings){
                switch (settings.name){
                    case AppRoutes.initial:
                        return MaterialPageRoute(builder: (_) const Auth());
                    default:
                        return _errorRoute();
                }
            }

            static Route<dynamic> _errorRoute(){
                return MaterialPageRoute(builder: (_){
                    return const Scaffold(
                        body: Center(
                            child: Text('Route not found!'),
                        ),
                    );
                });
            }
        }
        ```

        Add main.dart (router configuration)
        
        ```dart
        import 'core/config/router/route_generator.dart'
        MaterialApp(
            initialRoute: AppRoutes.initial,
            onGenerateRoute: RouteGenerator.generateRoute,
        )
        ```
        # How to handle arguments
        If I need to pass argument into different screen, how can i do this?
        
        ```dart
        case AppRoutes.screenY:
            final args = settings.arguments as Map<String, dynamic>?; // Cast the arguments
            return MaterialPageRoute(
                builder: (_) => ScreenY(data: args?['id']),
            );
        ```

        # In case you need to add transition animation
        
        ```dart
        case AppRoutes.screenY:
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const ScreenY(),
            transitionsBuilder: (context, animation,    secondaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
            },
        );
        ```


    5.  If you use external packages like Go-Router in router manager
        
        ```dart
        import 'package:go_router/go_router.dart';
        import 'app_routes.dart'

        class AppRouter{
            static final GoRouter router = GoRouter(
                initialLocation: AppRoutes.initial,
                routes:[
                    GoRoute(
                        path: AppRoutes.initial,
                        builder: (context, state) => const Auth(),
                    )
                    // Nested routes or protected routes go here
                ]
                // Redirect logic for Auth (Clean Architecture approach)
                redirect: (context, state) {
                    // Access your AuthBloc/Provider here to decide 
                    // if the user should go to Login or Dashboard
                    return null; 
                },
            );
        }
        ```
        add main.dart (Material App Configuration)

        ```dart
        import 'core/config/router/route_manager.dart';
        MaterialApp.router(
            routerConfig: AppRouter.router,
        )
        ```



    }

3.  Launcher Icon Set up{

    }

4.  Native Splash Screen Set up{

    }

5.  Navigation Service (Clean Architecture){

    }

6.  Add Navigation Services{
    1.  create file inside lib/core/services/navigation_service.dart
    2.  Add navigation code with singleton instances
    3.  Add MaterialApp Configuration
        ```dart
        import 'core/services/navigation_service.dart';
        MaterialApp(
            navigatorKey: NavigationService.instance.navigatorKey,
        )
        ```
    }
    4.  How to use them inside a ui
        inside ui directly
        ```
        NavigationService.instance.navigateTo('/details', arguments: 'Hello from Home!');
        ```

        or using riverpod
        ```dart
        class AuthNotifier extends StateNotifier<AuthState> {
        final NavigationService _navService = NavigationService.instance;
            void login() async {
                // ... login logic ...
                _navService.navigateTo('/home');
            }
        }
        ```
        In route
        NavigationService.instance.navigateTo(AppRoutes.details);
    