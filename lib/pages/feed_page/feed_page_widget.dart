import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart' hide Feedback;
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:pivo_front/domain/entity/photo.dart';
import 'package:pivo_front/res/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'feed_page_wm.dart';

// TODO: cover with documentation
/// Main widget for FeedPage module
@RoutePage()
class FeedPageWidget extends ElementaryWidget<IFeedPageWidgetModel> {
  const FeedPageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultFeedPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFeedPageWidgetModel wm) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 600,
        ),
        child: RefreshIndicator(
          onRefresh: wm.refresh,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  horizontal: 4,
                ),
                sliver: PagedSliverList<int, Feedback>.separated(
                  pagingController: wm.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<Feedback>(
                    itemBuilder: (context, item, index) {
                      return Card(
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.zero,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(
                                    child: Text(index.toString()),
                                  ),
                                  title: Text(
                                    item.userId.toString(),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    item.type.toString(),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Divider(),
                                const SizedBox(height: 8),
                                Text(item.text),
                                const SizedBox(height: 8),
                                if (item.photos.isNotEmpty)
                                  PhotoList(
                                    photos: item.photos,
                                  ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    IconButton.filledTonal(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite),
                                      visualDensity: VisualDensity.compact,
                                    ),
                                    const SizedBox(width: 10),
                                    FilledButton.tonalIcon(
                                      onPressed: () {},
                                      icon: const Icon(Icons.comment),
                                      label: const Text('0'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhotoList extends StatefulWidget {
  const PhotoList({
    super.key,
    required this.photos,
  });

  final List<Photo> photos;

  @override
  State<PhotoList> createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.photos.length,
            itemBuilder: (context, index) {
              final photo = widget.photos[index];

              return ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                child: CachedNetworkImage(
                  imageUrl: photo.photoUrl,
                  fit: BoxFit.cover,
                  errorWidget: (_, __, ___) => Image.asset(
                    Assets.pivoa[2],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count:  widget.photos.length,// PageController
          effect:  const WormEffect(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
