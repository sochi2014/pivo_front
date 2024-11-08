import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/pages/pages.dart';
import 'package:pivo_front/uikit/avatar.dart';

// TODO: cover with documentation
/// Main widget for ProfilePage module
@RoutePage()
class ProfilePageWidget extends ElementaryWidget<IProfilePageWidgetModel> {
  const ProfilePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfilePageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfilePageWidgetModel wm) {
    return ValueListenableBuilder(
      valueListenable: wm.authState,
      builder: (context, auth, _) {
        if (!auth) {
          return const PromoPage();
        }

        return StreamBuilder(
          initialData: wm.profileStream.valueOrNull,
          stream: wm.profileStream.stream,
          builder: (context, snapshot) {
            final data = snapshot.data;

            if (data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView(
              children: [
                SizedBox(
                  height: 300,
                  child: Avatar(data: data),
                ),
                Text(
                  data.level?.levelName ?? '',
                  textAlign: TextAlign.center,
                ),
                ListTile(
                  title: Text(data.username),
                  subtitle: Text(data.email),
                ),
                SizedBox(height: 16),
                Divider(indent: 16, endIndent: 16),
                SizedBox(height: 16),
                ListTile(
                  leading: Icon(Icons.favorite_outline),
                  title: Text('Избранное'),
                ),
                Divider(indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(Icons.reviews),
                  title: Text('Мои отзывы'),
                ),
                Divider(indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(Icons.place),
                  title: Text('Мои места'),
                ),
                Divider(indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Друзья'),
                ),
                Divider(indent: 16, endIndent: 16),
              ],
            );
          },
        );
      },
    );
  }
}
