import 'dart:ui';

import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/repository/graphql_repository/responses/common/title.dart';
import 'package:anilist_client/utilities/extensions/build_context.dart';
import 'package:anilist_client/utilities/mixin/show_bottomsheet_mixin.dart';
import 'package:anilist_client/view/ani_watch_divider.dart';
import 'package:flutter/material.dart';

class MediaTitleBottomSheet extends StatelessWidget with ShowBottomSheetMixin {
  const MediaTitleBottomSheet({
    super.key,
    this.native,
    this.english,
    this.romanji,
    this.synonyms = const [],
  });

  MediaTitleBottomSheet.fromTitle({
    required MediaTitle title,
    this.synonyms = const [],
  })  : native = title.native,
        romanji = title.romaji,
        english = title.romaji;

  final String? english;
  final String? native;
  final String? romanji;
  final List<String> synonyms;

  @override
  BoxConstraints? get constraints => BoxConstraints(
        maxHeight: AppConfig.appContext.screenSize.height,
      );

  @override
  bool get isScrollControlled => true;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppConfig.theme.dialogBackground,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: SizedBox(
          width: context.screenSize.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Other Names / Synonyms",
                        style: AppConfig.theme.titleSmallTextStyle,
                      ),
                    ),
                    InkWell(
                      onTap: () => context.pop(),
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.close,
                          color: AppConfig.theme.titleLargeColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                if (english?.isNotEmpty ?? false) ...[
                  Text(
                    "English",
                    style: AppConfig.theme.bodyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    english ?? 'N/A',
                    style: AppConfig.theme.textFieldTextStyle,
                  ),
                  AniWatchDivider(height: 30),
                ],
                if (romanji?.isNotEmpty ?? false) ...[
                  Text(
                    "Romanji",
                    style: AppConfig.theme.bodyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    romanji ?? 'N/A',
                    style: AppConfig.theme.textFieldTextStyle,
                  ),
                  AniWatchDivider(height: 30),
                ],
                if (native?.isNotEmpty ?? false) ...[
                  Text(
                    "Native",
                    style: AppConfig.theme.bodyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    native ?? 'N/A',
                    style: AppConfig.theme.textFieldTextStyle,
                  ),
                  AniWatchDivider(height: 30),
                ],
                if (synonyms.isNotEmpty) ...[
                  Text(
                    "Synonyms",
                    style: AppConfig.theme.bodyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  ...synonyms.map(
                    (e) => Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        e,
                        style: AppConfig.theme.textFieldTextStyle,
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
