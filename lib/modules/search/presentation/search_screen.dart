import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/modules/anime_details/presentation/anime_grid_tile.dart';
import 'package:anilist_client/modules/search/domain/search_bloc.dart';
import 'package:anilist_client/modules/search/domain/search_page_events.dart';
import 'package:anilist_client/modules/search/domain/search_page_states.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/values/resources/fontawesome_icons.dart';
import 'package:anilist_client/view/anime_zone_hero.dart';
import 'package:anilist_client/view/form_fields/ani_list_search_bar.dart';
import 'package:anilist_client/view/scaffolds/animwatch_default_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class SearchAnime extends StatelessWidget {
  const SearchAnime({super.key});

  @override
  Widget build(BuildContext context) {
    return AniWatchDefaultScaffold(
      child: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final matrices = notification.metrics;

            if (matrices.pixels + 500 >= matrices.maxScrollExtent) {
              context.read<SearchAnimeBloc>().add(SearchAnimeNextPageEvent());
            }

            return false;
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 30,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: context.pop,
                        child: Icon(
                          Fontawesome.chevron_left,
                          color: AppConfig.theme.titleLargeColor,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "Search Anime",
                        style: AppConfig.theme.titleSmallTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SliverAppBar(
                backgroundColor: AppConfig.theme.scaffoldBackground,
                surfaceTintColor: Colors.transparent,
                shadowColor: Colors.black,
                elevation: 30,
                centerTitle: false,
                pinned: true,
                collapsedHeight: 110,
                automaticallyImplyLeading: false,
                floating: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                  ),
                  child: AnimeZoneHero(
                    tag: "anime-search-text-field",
                    child: AniListSearchBar(
                      hint: 'Search anime...',
                      autoFocus: true,
                      onSearch: (value) {
                        context.read<SearchAnimeBloc>().add(
                              SearchAnimeSearchEvent(query: value),
                            );
                      },
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 20,
                  right: 20,
                ),
                sliver: BlocBuilder<SearchAnimeBloc, SearchAnimeState>(
                  builder: (_, state) {
                    if (state.data.isNotEmpty) {
                      return SliverGrid.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                        itemBuilder: (_, index) {
                          try {
                            return AnimeGridTile(
                              anime: state.data[index],
                            );
                          } catch (e) {
                            return Shimmer.fromColors(
                              baseColor: Colors.grey.shade400,
                              highlightColor: Colors.grey.shade100,
                              direction: ShimmerDirection.ltr,
                              period: Duration(seconds: 4),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: AppConfig.theme.textFieldTextColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            );
                          }
                        },
                        itemCount: state.data.length + (state.hasMore ? 2 : 0),
                      );
                    }

                    return SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Text(
                          state.state.isLoading
                              ? "Searching for anime..."
                              : state.state.isIdle
                                  ? "Search for your favorite anime"
                                  : state.state.isSuccess
                                      ? "No anime found."
                                      : "Something went wrong!",
                          style: AppConfig.theme.titleSmallTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
