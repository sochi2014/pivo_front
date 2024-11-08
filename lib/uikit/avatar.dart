import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/profile.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.data,
  });

  final Profile data;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Stack(
        children: [
          Center(
            child: CachedNetworkImage(
              imageUrl: 'https://${data.level?.icon}',
            ),
          ),
          Center(
            child: LayoutBuilder(
              builder: (
                context,
                constrains,
              ) {
                return ConstrainedBox(
                  constraints: constrains / 2,
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: 'https://${data.avatarUrl ?? ''}',
                        width: double.infinity,
                        height: double.infinity,
                        errorWidget: (context, __, ___) {
                          final themeData = Theme.of(context);
                          return ColoredBox(
                            color: themeData.colorScheme.primaryContainer,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FittedBox(
                                  child: Text(
                                    data.username.substring(0, 2).toUpperCase(),
                                    style: themeData.textTheme.headlineLarge
                                        ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
