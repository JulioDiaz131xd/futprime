import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 16),
          Text(
            'Bienvenido, ${user.username}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              title: const Text('Rol'),
              subtitle: Text(user.role),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Último acceso'),
              subtitle: Text(user.lastLogin),
            ),
          ),
        ],
      ),
    );
  }
}
