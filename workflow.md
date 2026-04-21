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
        1.  Install flutter_launcher_icons package by
            flutter pub add flutter_launcher_icons
        2.  Add dependency under dev_dependencies
            
            flutter_launcher_icons:
                android: "launcher_icon"
                ios: true
                image_path: "assets/images/app_logo.png"
                adaptive_icon_background: "#ffffff" # For Android Adaptive Icons
                adaptive_icon_foreground: "assets/images/app_logo_foreground.png"
        3.  Then - run
            flutter pub run flutter_launcher_icons
            dart run flutter_launcher_icons

        icons:

        https://www.template.net/graphic-design/icon-sizes/
        article
        
        The industry standard for Android launcher icons (adaptive icons) is a base size of 

        dp (

        px at XXXHDPI) for both foreground and background layers. The Google Play Store requires a final 

        px PNG. For UI icons, the standard size is 

        dp. 
        Android Developers
        Android Developers
        +3
        Key Android Launcher Icon Standards:
        Total Size: 

        dp (inclusive of safe zone).
        Safe Zone: 

        dp (content should stay within this to avoid masking).
        Icon Area: 

        dp.
        File Format: 32-bit PNG.
        Play Store Requirements: 

        px, 32-bit PNG, max 1024KB.
        Density Sizes:
        XXXHDPI: 

        px
        XXHDPI: 

        px
        XHDPI: 

        px
        HDPI: 

        px 
        Android Developers
        Android Developers
        +4
        Key iOS Icon Standards:
        App Store: 

        px (1024x1024pt).
        iPhone: 

        px (@3x) or 

        px (@2x).
        iPad: 

        px (@2x) or 

        px (@2x). 
        Adapty
        Adapty
        +4
        Key Windows Icon Standards:
        Modern/Desktop: 

        px.
        Standard Explorer: 

        px. 
        creativefreedom.co.uk
        creativefreedom.co.uk

        icon sizes:
        Industry standard icon sizes are generally based on multiples of 8 or 4 (e.g., 16, 24, 32, 48, 64) for screen-based, pixel-perfect alignment. Common standards include 24x24 px for UI icons (Material Design) and 512x512 px for app store icons (Android/iOS). 
        Stack Overflow
        Stack Overflow
        +2
        Core Interface Icon Sizes (PNG/SVG)
        16x16 px: Small interface elements, status indicators, and browser favicons.
        20x20 px: Compact layouts, small-scale visuals.
        24x24 px: Most common baseline for standard toolbar/menu icons on mobile and web.
        32x32 px: Larger UI elements, desktop toolbars.
        48x48 px: Touch targets on mobile, Settings, and desktop icons. 
        Icons8
        Icons8
        +4
        App Icon Sizes (Store and Launchers)
        512x512 px: The standard master artwork size for Android app submissions to Google Play and common in Windows.
        1024x1024 px: Master size for Apple iOS and macOS app icons.
        180x180 px: Standard iPhone 6S and higher Home Screen icon.
        192x192 px: Standard Android PWA (Progressive Web App) icon. 
        Icons8
        Icons8
        +4
        Platform-Specific Guidelines
        Material Design (Android): 24dp is the baseline, often on a 48x48dp touch target.
        iOS/iPadOS: Favors 24pt, 30pt, or 40pt for toolbar/navigation bar icons.
        Windows: Supports 16, 32, 48, 256, and 512px; suggests providing 256px+ to ensure crisp scaling.
        Web Favicon: 16x16, 32x32, 48x48, or a 48x48+ multiple for Google Search results. 
        Microsoft Learn
        Microsoft Learn
        +4
        Best Practices
        Use SVG: Always prefer vector format (.svg) for scalability.
        Padding: Leave 2px of empty space on the edges of a 24x24 frame (16x16 or 20x20 live area).
        Consistency: Keep the stroke thickness and style (filled/outlined) consistent across a set.
        Touch Targets: Ensure interactive icons have a touch target of at least 44x44 (Apple) or 48x48 (Google) dp. 
        DEV Community
        DEV Community
        +3

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
    