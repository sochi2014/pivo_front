import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart' hide Feedback;
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/pages/pages.dart';
import 'package:pivo_front/res/assets.dart';

// TODO: cover with documentation
/// Main widget for FeedbackPage module
@RoutePage()
class FeedbackPageWidget extends ElementaryWidget<IFeedbackPageWidgetModel> {
  const FeedbackPageWidget({
    Key? key,
    @queryParam this.typeFeedback = 'beer',
    this.beer,
    this.place,
    @queryParam this.beerId,
    @queryParam this.placeId,
    WidgetModelFactory wmFactory = defaultFeedbackPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String typeFeedback;
  final Beer? beer;
  final int? beerId;
  final Place? place;
  final int? placeId;

  @override
  Widget build(IFeedbackPageWidgetModel wm) {
    final localizations = wm.localizations;
    final beer = this.beer;
    return ValueListenableBuilder(
      valueListenable: wm.authState,
      builder: (context, auth, _) {
        if (!auth) {
          return const Scaffold(
            body: PromoPage(),
          );
        }

        return Scaffold(
          body: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 650,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverList.list(
                    children: [
                      Text(
                        localizations.feedbackBeerTitle,
                        style: wm.theme.textTheme.headlineLarge,
                      ),
                      if (beer != null) ...[
                        const SizedBox(height: 8),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: AspectRatio(
                            aspectRatio: 1,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              ),
                              child: CachedNetworkImage(
                                imageUrl: beer.photo ?? '',
                                fit: BoxFit.cover,
                                errorWidget: (_, __, ___) => Image.asset(
                                  Assets.pivoa[2],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            beer.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            beer.type ?? '',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                      const SizedBox(height: 16),
                      Text(
                        localizations.feedbackRateBeer,
                        style: wm.theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 16),
                      ValueListenableBuilder(
                        valueListenable: wm.ratingState,
                        builder: (context, index, _) {
                          return Row(
                            children: [
                              for (int i = 0; i < 10; i++)
                                IconButton(
                                  onPressed: () => wm.onRate(i),
                                  icon: Icon(
                                    i <= index
                                        ? Icons.sports_bar
                                        : Icons.sports_bar_outlined,
                                    color: i <= index
                                        ? wm.colorScheme.primary
                                        : null,
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      Text(
                        localizations.feedbackFeelings,
                        style: wm.theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: wm.textController,
                        maxLines: 10,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        localizations.feedbackSharePhotos,
                        style: wm.theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                  ValueListenableBuilder(
                    valueListenable: wm.photosState,
                    builder: (context, photos, _) {
                      return SliverGrid.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                        ),
                        itemCount: photos.length + 1,
                        itemBuilder: (context, index) {
                          if (index == photos.length) {
                            return Card.outlined(
                              clipBehavior: Clip.hardEdge,
                              child: InkWell(
                                onTap: () {},
                                child: const Center(
                                  child: Icon(Icons.add),
                                ),
                              ),
                            );
                          }

                          return const SizedBox();
                        },
                      );
                    },
                  ),
                  SliverToBoxAdapter(
                    child: Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: FilledButton(
                        onPressed: wm.sendReview,
                        child: Text(localizations.send),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
