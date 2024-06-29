import 'dart:math' as math;

import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/modules/anime_details/domain/anime_details_bloc.dart';
import 'package:anilist_client/modules/anime_details/domain/anime_details_event.dart';
import 'package:anilist_client/modules/anime_details/domain/anime_details_state.dart';
import 'package:anilist_client/modules/anime_details/presentation/anime_character_tile.dart';
import 'package:anilist_client/modules/anime_details/presentation/anime_relation_tile.dart';
import 'package:anilist_client/modules/anime_details/presentation/anime_staff_tile.dart';
import 'package:anilist_client/utilities/extensions/ani_watch_theme.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/utilities/extensions/color.dart';
import 'package:anilist_client/utilities/extensions/datetime.dart';
import 'package:anilist_client/utilities/extensions/string.dart';
import 'package:anilist_client/view/custom_painters/percentage_painter.dart';
import 'package:anilist_client/view/scaffolds/animwatch_default_scaffold.dart';
import 'package:anilist_client/view/titles/section_title.dart';
import 'package:anilist_client/view/tooltips/anilist_tooltip.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

const parallaxFactor = 0.8;

class AnimeDetailsScreen extends StatefulWidget {
  const AnimeDetailsScreen({super.key});

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  // TODO(parth): Move to BloC.
  final _position = ValueNotifier(0.0);

  @override
  void initState() {
    super.initState();

    context.read<AnimeDetailsBloc>().add(AnimeDetailsFetchEvent());
  }

  @override
  void dispose() {
    _position.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AniWatchDefaultScaffold(
      child: BlocBuilder<AnimeDetailsBloc, AnimeDetailsState>(
        builder: (_, state) {
          if (state.state.isIdle) {
            return Center(
              child: Text(
                "No data...",
                style: AppConfig.theme.titleSmallTextStyle,
              ),
            );
          }
          if (state.state.isLoading) {
            return Center(
              child: Text(
                "Data is loading...",
                style: AppConfig.theme.titleSmallTextStyle,
              ),
            );
          }

          if (state.state.isError) {
            return Center(
              child: Text(
                "Something is wrong while showing data.",
                style: AppConfig.theme.titleSmallTextStyle,
              ),
            );
          }

          if (state.state.isSuccess && state.details == null) {
            return Center(
              child: Text(
                "Details not found.",
                style: AppConfig.theme.titleSmallTextStyle,
              ),
            );
          }

          final details = state.details!;

          final brightness =
              (details.coverImage?.color?.toColor ?? Colors.white).brightness;

          final imageHeight = math.min(context.screenSize.height * 0.6, 700.0);

          return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.axis == Axis.vertical) {
                _position.value = notification.metrics.pixels;
              }

              return false;
            },
            child: Stack(
              children: [
                SizedBox(
                  height: imageHeight,
                  width: double.maxFinite,
                  child: ValueListenableBuilder(
                    valueListenable: _position,
                    builder: (_, value, child) {
                      return FractionalTranslation(
                        translation: Offset(
                          0,
                          -(math.min(
                              1.0, (value * parallaxFactor) / imageHeight)),
                        ),
                        child: child,
                      );
                    },
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.transparent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(rect);
                      },
                      child: CachedNetworkImage(
                        imageUrl: details.coverImage!.extraLarge,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          SizedBox(
                            height: 400,
                            child: details.trailer != null
                                ? Center(
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.redAccent,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Icon(
                                          Icons.play_arrow_rounded,
                                          size: 44,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                : SizedBox.shrink(),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                            ),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: details.title!.userPreferred ?? "N/A",
                                    style: AppConfig.theme.titleSmallTextStyle,
                                  ),
                                  TextSpan(
                                    text: "    ",
                                  ),
                                  WidgetSpan(
                                    child: InkWell(
                                      onTap: () {
                                        // TODO(parth): show bottom sheet with
                                        // title in different languages and
                                        // synonyms.
                                        debugPrint("This is new...");
                                      },
                                      borderRadius: BorderRadius.circular(30),
                                      child: Icon(
                                        Icons.info_outline_rounded,
                                        size: 24,
                                        color: AppConfig
                                            .theme.dialogSecondaryBackground,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: AniWatchTooltip(
                              message: details.satisfaction.tooltip,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    details.satisfaction.icon,
                                    size: 30,
                                    color: details.satisfaction.color,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "${details.averageScore ?? 0} %",
                                    style: AppConfig.theme.bodyTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: AniWatchTooltip(
                                richMessage: TextSpan(
                                  children: [
                                    details.typeSpan,
                                    details.sourceSpan,
                                    details.statusSpan,
                                  ],
                                ),
                                child: Text(
                                  '${details.format.display} | ${details.source.display} | ${details.status.display}',
                                  style: AppConfig.theme.bodyLargeTextStyle
                                      .copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          if (details.hashtag != null) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                details.hashtag!,
                                style: AppConfig.theme.bodyTextStyle,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          if (details.episodes != null) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "${details.episodes!} Episodes",
                                style: AppConfig.theme.bodyTextStyle,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          if (details.startDate != null) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'Release Date: ${details.startDate?.dateTime.format('dd MMM yyyy')}',
                                style: AppConfig.theme.bodyTextStyle,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          if (details.status.isFinished &&
                              details.endDate != null) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                'End Date: ${details.endDate?.dateTime.format('dd MMM yyyy')}',
                                style: AppConfig.theme.bodyTextStyle,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Html(
                              data: '<div>'
                                  '${details.description ?? 'No description found.'}'
                                  '</div>',
                              style: AppConfig.theme.generateHtmlStyleSheet,
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Genre",
                              style: AppConfig.theme.titleSmallTextStyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: SizedBox(
                              height: 40,
                              child: ListView.separated(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 20),
                                itemBuilder: (_, index) {
                                  final genre = details.genres[index];
                                  return InkWell(
                                    onTap: () {
                                      // TODO(parth): Search pages using genre.
                                    },
                                    borderRadius: BorderRadius.circular(100),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: AppConfig
                                            .theme.dialogSecondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        child: Center(
                                          child: Text(
                                            genre,
                                            style:
                                                AppConfig.theme.bodyTextStyle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: details.genres.length,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Tags",
                              style: AppConfig.theme.titleSmallTextStyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: SizedBox(
                              height: 130,
                              child: ListView.separated(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 30),
                                itemBuilder: (_, index) {
                                  final tag = details.tags[index];

                                  return AniWatchTooltip(
                                    message: tag.description ?? 'N/A',
                                    child: Column(
                                      children: [
                                        PercentagePainter(
                                          child: SizedBox.square(
                                            dimension: 80,
                                            child: Center(
                                              child: Text(
                                                "${tag.rank ?? 0} %",
                                                style: AppConfig
                                                    .theme.bodyLargeTextStyle,
                                              ),
                                            ),
                                          ),
                                          percentage: (tag.rank ?? 0),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          tag.name ?? 'N/A',
                                          style: AppConfig
                                              .theme.bodyLargeTextStyle
                                              .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                itemCount: details.genres.length,
                              ),
                            ),
                          ),
                          if (details.rankings.isNotEmpty) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "Rankings",
                                style: AppConfig.theme.titleSmallTextStyle,
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              height: 170,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (_, index) {
                                  final ranking = details.rankings[index];

                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 18,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              ranking.type.icon,
                                              color: ranking.type.iconColor,
                                              size: 18,
                                            ),
                                            SizedBox(width: 10),
                                            Text(
                                              '${ranking.type}',
                                              style: AppConfig
                                                  .theme.bodyLargeTextStyle,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          '# ${ranking.rank ?? 0}',
                                          style: AppConfig
                                              .theme.bodyLargeTextStyle
                                              .copyWith(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          ranking.allTime ?? false
                                              ? 'All Time'
                                              : '${ranking.year}',
                                          style: AppConfig.theme.bodyTextStyle,
                                        )
                                      ],
                                    ),
                                  );
                                },
                                itemCount: details.rankings.length,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          if (details.relations?.edges.isNotEmpty ?? false) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: AniWatchSectionTitle(
                                title: "Relations",
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: ListView.separated(
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 20),
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                itemBuilder: (_, index) {
                                  final relation =
                                      details.relations!.edges[index];

                                  return Center(
                                    child: SizedBox(
                                      height: 150,
                                      width: 120,
                                      child: AnimeRelationTile(
                                        relation: relation,
                                        onTap: () {
                                          // TODO(parth): Navigate to details...
                                        },
                                      ),
                                    ),
                                  );
                                },
                                itemCount: details.relations!.edges.length,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          if (details.characters?.edges.isNotEmpty ??
                              false) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: AniWatchSectionTitle(
                                title: "Characters",
                                onSeeMore: () {
                                  // TODO(parth): Go to listing screen...
                                },
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: ListView.separated(
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 20),
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                itemBuilder: (_, index) {
                                  final character =
                                      details.characters!.edges[index];

                                  return Center(
                                    child: SizedBox(
                                      height: 150,
                                      width: 120,
                                      child: AnimeCharacterTile(
                                        character: character,
                                        onTap: () {
                                          // TODO(parth): Navigate to details...
                                        },
                                      ),
                                    ),
                                  );
                                },
                                itemCount: details.characters!.edges.length,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                          if (details.staff?.edges.isNotEmpty ?? false) ...[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: AniWatchSectionTitle(
                                title: "Staff",
                                onSeeMore: () {
                                  // TODO(parth): Go to listing screen...
                                },
                              ),
                            ),
                            SizedBox(
                              height: 200,
                              child: ListView.separated(
                                separatorBuilder: (_, __) =>
                                    SizedBox(width: 20),
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                itemBuilder: (_, index) {
                                  final staff = details.staff!.edges[index];

                                  return Center(
                                    child: SizedBox(
                                      height: 150,
                                      width: 120,
                                      child: AnimeStaffTile(
                                        staff: staff,
                                        onTap: () {
                                          // TODO(parth): Navigate to details...
                                        },
                                      ),
                                    ),
                                  );
                                },
                                itemCount: details.staff!.edges.length,
                              ),
                            ),
                            SizedBox(height: 20),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                ValueListenableBuilder(
                  valueListenable: _position,
                  builder: (_, value, child) {
                    return ColoredBox(
                      color:
                          AppConfig.theme.dialogSecondaryBackground.withOpacity(
                        math.min(1.0, (value * 1.2) / imageHeight),
                      ),
                      child: child,
                    );
                  },
                  child: SafeArea(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.pop();
                          },
                          icon: Icon(
                            Icons.chevron_left,
                            color: brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black,
                            size: 30,
                          ),
                        ),
                        Expanded(
                          child: ValueListenableBuilder(
                            valueListenable: _position,
                            builder: (_, value, child) {
                              return Opacity(
                                opacity: math.min(1.0, value / imageHeight),
                                child: child,
                              );
                            },
                            child: Text(
                              details.title?.userPreferred ?? 'N/A',
                              style:
                                  AppConfig.theme.titleSmallTextStyle.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
