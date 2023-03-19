import 'package:flutter/material.dart';
import '../../../../constant/app_assets.dart';
import 'settings_widget.dart';

class AllSettings extends StatelessWidget {
  const AllSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settings
          .map(
            (e) => SettingsWidget(
              title: e['title'],
              icon: e['icon'],
            ),
          )
          .toList(),
    );
  }
}

const List<Map<String, dynamic>> settings = [
  {
    'title': 'My Account',
    'icon': AppIcons.accountIcon,
  },
  {
    'title': 'Notifications',
    'icon': AppIcons.notificationsIcon,
  },
  {
    'title': 'Settings',
    'icon': AppIcons.settingsIcon,
  },
  {
    'title': 'Help Center',
    'icon': AppIcons.helpCenterIcon,
  },
  {
    'title': 'Log Out',
    'icon': AppIcons.logoutIcon,
  },
];
