import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart'; // Añadir esta importación
import 'screens/players_page.dart';
import 'screens/stadiums_page.dart';
import 'screens/teams_page.dart';
import 'screens/profile_page.dart';
import 'screens/splash_screen.dart';
import 'models/user.dart'; // Asegúrate de tener este modelo

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futbol Prime',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E4174),
          primary: const Color(0xFF1E4174),
          secondary: const Color(0xFF2E8B57),
          tertiary: const Color(0xFFFF6B6B),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 2,
          centerTitle: true,
          backgroundColor: Color(0xFF1E4174),
          foregroundColor: Colors.white,
        ),
        cardTheme: CardThemeData(
          elevation: 2,
          shadowColor: Colors.black26,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
          elevation: 8,
          backgroundColor: Colors.white,
          indicatorColor: const Color(0xFF1E4174).withOpacity(0.1),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      home: const SplashScreenWrapper(),
    );
  }
}

class SplashScreenWrapper extends StatefulWidget {
  const SplashScreenWrapper({super.key});

  @override
  State<SplashScreenWrapper> createState() => _SplashScreenWrapperState();
}

class _SplashScreenWrapperState extends State<SplashScreenWrapper> {
  @override
  void initState() {
    super.initState();
    _navigateToMain();
  }

  Future<void> _navigateToMain() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthWrapper()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool isLoggedIn = false;
  bool showLogin = true;
  User? currentUser;

  void _handleLogin(String username, String password) {
    if (username.toLowerCase() == 'chuss' && password == '123456') {
      setState(() {
        isLoggedIn = true;
        currentUser = User(
          username: username,
          role: 'administrador',
          lastLogin: DateTime.now().toString(),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Usuario o contraseña incorrectos'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _handleRegister(String email, String password) {
    setState(() {
      isLoggedIn = true;
    });
  }

  void _handleLogout() {
    setState(() {
      isLoggedIn = false;
      showLogin = true;
      currentUser = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!isLoggedIn) {
      return showLogin 
        ? LoginScreen(
            onLogin: _handleLogin,
            onRegisterTap: () => setState(() => showLogin = false),
          )
        : RegisterScreen(
            onRegister: _handleRegister,
            onLoginTap: () => setState(() => showLogin = true),
          );
    }
    return HomePage(user: currentUser!, onLogout: _handleLogout);
  }
}

class HomePage extends StatefulWidget {
  final User user;
  final VoidCallback onLogout;
  
  const HomePage({
    super.key,
    required this.user,
    required this.onLogout,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const PlayersPage(),
      const StadiumsPage(),
      const TeamsPage(),
      ProfilePage(user: widget.user),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.sports_soccer_rounded, size: 28, color: Colors.white),
            const SizedBox(width: 12),
            const Text('Futbol Prime'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showSearch(context: context, delegate: CustomSearchDelegate()),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              accountName: Text(widget.user.username),
              accountEmail: Text(widget.user.role),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.sports_soccer_rounded,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildDrawerItem(
                    icon: Icons.people_rounded,
                    title: 'Jugadores',
                    index: 0,
                  ),
                  _buildDrawerItem(
                    icon: Icons.stadium_rounded,
                    title: 'Estadios',
                    index: 1,
                  ),
                  _buildDrawerItem(
                    icon: Icons.shield_rounded,
                    title: 'Equipos',
                    index: 2,
                  ),
                  _buildDrawerItem(
                    icon: Icons.person_rounded,
                    title: 'Mi Perfil',
                    index: 3,
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: const Text('Cerrar sesión'),
              onTap: widget.onLogout,
            ),
          ],
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        animationDuration: const Duration(milliseconds: 300),
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.people_rounded),
            label: 'Jugadores',
          ),
          NavigationDestination(
            icon: Icon(Icons.stadium_rounded),
            label: 'Estadios',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_soccer_rounded),
            label: 'Equipos',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required int index,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: _currentIndex == index,
      onTap: () {
        setState(() => _currentIndex = index);
        Navigator.pop(context);
      },
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implementar resultados de búsqueda
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implementar sugerencias de búsqueda
    return Container();
  }
}
