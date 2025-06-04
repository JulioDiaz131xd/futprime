class User {
  final String username;
  final String role;
  final String lastLogin;

  User({
    required this.username,
    this.role = 'usuario',
    required this.lastLogin,
  });
}
