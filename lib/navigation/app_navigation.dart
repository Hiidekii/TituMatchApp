import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:titumatch/pages/Alumnos/alumnos_page.dart';
import 'package:titumatch/pages/Asesores/asesores_page.dart';
import 'package:titumatch/pages/Congrats/congrats_page.dart';
import 'package:titumatch/pages/Experiencia/experiencia_page.dart';
import 'package:titumatch/pages/Bienvenida/welcome_page.dart';
import 'package:titumatch/pages/Eventos/eventos_page.dart';
import 'package:titumatch/pages/Home/home_page.dart';
import 'package:titumatch/pages/Info/info_page.dart';
import 'package:titumatch/pages/Loading/loading_page.dart';
import 'package:titumatch/pages/Login/login_page.dart';
import 'package:titumatch/pages/Profile/profile_page.dart';
import 'package:titumatch/pages/Quiz/quiz_page.dart';
import 'package:titumatch/pages/Recursos/recursos_page.dart';
import 'package:titumatch/pages/Resultados/resultados_page.dart';
import 'package:titumatch/pages/Talleres/talleres_page.dart';
import 'package:titumatch/pages/Temas/temas_page.dart';
import 'package:titumatch/pages/Wraper/main_wraper.dart';

class AppNavigation {
  AppNavigation._();

  static String initR = "/login";

  //Private navigator keys
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');

  static final _rootNavigatorRecusos =
      GlobalKey<NavigatorState>(debugLabel: 'shellRecursos');

  static final _rootNavigatorProfile =
      GlobalKey<NavigatorState>(debugLabel: 'shellProfile');

  //Go Router Config
  static final GoRouter router = GoRouter(
    initialLocation: initR,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      //LoginPage
      GoRoute(
        path: '/login',
        name: 'Login',
        builder: (context, state) {
          return LoginPage();
        },
      ),
      //WelcomePage
      GoRoute(
        path: '/welcome',
        name: 'Welcome',
        builder: (context, state) {
          return const WelcomePage();
        },
      ),
      //InfoPage
      GoRoute(
        path: '/info',
        name: 'Info',
        builder: (context, state) {
          return const InfoPage();
        },
      ),
      //ExperiencePage
      GoRoute(
        path: '/experience',
        name: 'Experience',
        builder: (context, state) {
          return const ExperiencePage();
        },
      ),
      //QuizPage
      GoRoute(
        path: '/quiz',
        name: 'Quiz',
        builder: (context, state) {
          return const QuizPage();
        },
      ),
      //LoadingPage
      GoRoute(
        path: '/loading',
        name: 'Loading',
        builder: (context, state) {
          return const LoadingPage();
        },
      ),
      //CongratsPage
      GoRoute(
        path: '/congrats',
        name: 'Congrats',
        builder: (context, state) {
          return const CongratsPage();
        },
      ), //ResultadosPage
      GoRoute(
        path: '/resultados',
        name: 'Resultados',
        builder: (context, state) {
          return const ResultadosPage();
        },
      ),
      //AsesoresPage
      GoRoute(
        path: '/asesores',
        name: 'Asesores',
        builder: (context, state) {
          return const AsesoresPage();
        },
      ),
      //TemasPage
      GoRoute(
        path: '/temas',
        name: 'Temas',
        builder: (context, state) {
          return const TemasPage();
        },
      ),
      //AlumnosPage
      GoRoute(
        path: '/alumnos',
        name: 'Alumnos',
        builder: (context, state) {
          return const AlumnosPage();
        },
      ),
      //BibliotecaPage
      GoRoute(
        path: '/biblioteca',
        name: 'Biblioteca',
        builder: (context, state) {
          return const Placeholder();
          //return BibliotecaPage();
        },
      ),
      //TalleresPage
      GoRoute(
        path: '/talleres',
        name: 'Talleres',
        builder: (context, state) {
          return const TalleresPage();
        },
      ),
      //TesisPasadasPage
      GoRoute(
        path: '/tesispasadas',
        name: 'TesisPasadas',
        builder: (context, state) {
          return const Placeholder();
          //return TesisPasadasPage();
        },
      ),
      //EventosPage
      GoRoute(
        path: '/eventos',
        name: 'Eventos',
        builder: (context, state) {
          return const EventosPage();
          //return EventosPage();
        },
      ),
      //MainWrapper Route
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainWrapper(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          //branch Home
          StatefulShellBranch(
            navigatorKey: _rootNavigatorHome,
            routes: [
              GoRoute(
                path: '/home',
                name: 'Home',
                builder: (context, state) {
                  return HomePage(
                    key: state.pageKey,
                  );
                },
              )
            ],
          ),

          //branch Structures
          StatefulShellBranch(
            navigatorKey: _rootNavigatorRecusos,
            routes: [
              GoRoute(
                path: '/recursos',
                name: 'Recursos',
                builder: (context, state) {
                  return RecursosPage(
                    key: state.pageKey,
                  );
                },
              )
            ],
          ),

          //branch profile
          StatefulShellBranch(
            navigatorKey: _rootNavigatorProfile,
            routes: [
              GoRoute(
                path: '/profile',
                name: 'Profile',
                builder: (context, state) {
                  return ProfilePage(
                    key: state.pageKey,
                  );
                },
              )
            ],
          ),
        ],
      ),
    ],
  );
}
