import 'package:cat_breeds/app/gen/assets.gen.dart';
import 'package:cat_breeds/app/theme/providers/theme_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = ref.watch(appBrightnessProvider);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsToken.images.drawerImage.path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(
                'Cat Breeds',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              )),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    brightness == Brightness.dark ? 'Light Mode' : 'Dark Mode'),
                Icon(
                  brightness == Brightness.dark
                      ? Icons.light_mode_outlined
                      : Icons.dark_mode_outlined,
                ),
              ],
            ),
            onTap: () {
              ref.read(appBrightnessProvider.notifier).toggle();
            },
          ),
        ],
      ),
    );
  }
}
