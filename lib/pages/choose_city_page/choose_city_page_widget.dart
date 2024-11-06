import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/geo_data.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/res/assets.dart';

import 'choose_city_page_wm.dart';

// TODO: cover with documentation
/// Main widget for EditProfilePage module
@RoutePage()
class ChooseCityPageWidget extends ElementaryWidget<IChooseCityWidgetModel> {
  const ChooseCityPageWidget({
    this.profile,
    Key? key,
    WidgetModelFactory wmFactory = defaultChooseCityPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final Profile? profile;

  @override
  Widget build(IChooseCityWidgetModel wm) {
    final theme = wm.theme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16),
                              ),
                              child: Container(
                                decoration:  BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      Assets.pivoa[2],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: SizedBox(
                              width: 400,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: TextField(
                                    controller: wm.cityController,
                                    style: theme.textTheme.bodyMedium?.copyWith(
                                      color: theme.colorScheme.onBackground,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.zoom_in,
                                        color: theme.primaryColor,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        borderSide: BorderSide(
                                          color: theme.cardTheme.color ??
                                              theme.cardColor,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16),
                                        ),
                                        borderSide: BorderSide(
                                          color: theme.cardTheme.color ??
                                              theme.cardColor,
                                        ),
                                      ),
                                      labelText: 'Город',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: StreamBuilder<List<GeoData>>(
                        stream: wm.geoLocationController,
                        initialData: const [],
                        builder: (context, snapshot) {
                          final cities =
                              wm.geoLocationController.valueOrNull ?? [];
                          return ListView.separated(
                            itemBuilder: (context, index) {
                              final city = cities[index];
                              return ListTile(
                                title: Text(
                                  city.name,
                                  style: theme.textTheme.labelLarge,
                                ),
                                subtitle:  Text(city.fullName),
                                onTap: () => wm.selectCity(city),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const Divider();
                            },
                            itemCount: cities.length,
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
