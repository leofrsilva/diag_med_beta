import 'package:diag_med_beta/routes.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.account_circle_outlined,
              size: MediaQuery.of(context).size.width * 0.2,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const ListTile(
            title: Text(
              'Dr Renato',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Metropolis',
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'CRM - 000000/SP',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Metropolis',
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text('Sair'),
            onTap: () => Navigator.pushReplacementNamed(context, loginRoute),
          ),
        ],
      ),
    );
  }
}
