import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/values/resources/fontawesome_icons.dart';
import 'package:anilist_client/view/form_fields/ani_list_text_field.dart';
import 'package:flutter/material.dart';

class AniListSearchBar extends StatelessWidget {
  const AniListSearchBar({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return AniListTextField(
      hintText: hint,
      leading: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Fontawesome.search,
            color: AppConfig.theme.textFieldTextColor,
          ),
        )
      ],
    );
  }
}
