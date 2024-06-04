import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/utilities/debouncer.dart';
import 'package:anilist_client/values/resources/fontawesome_icons.dart';
import 'package:anilist_client/view/form_fields/ani_list_text_field.dart';
import 'package:flutter/material.dart';

class AniListSearchBar extends StatefulWidget {
  const AniListSearchBar({
    super.key,
    required this.hint,
    this.autoFocus = false,
    required this.onSearch,
    this.debounceDuration = const Duration(
      milliseconds: 600,
    ),
  });

  final String hint;
  final bool autoFocus;
  final ValueSetter<String> onSearch;
  final Duration debounceDuration;

  @override
  State<AniListSearchBar> createState() => _AniListSearchBarState();
}

class _AniListSearchBarState extends State<AniListSearchBar> {
  late var _debouncer = Debouncer(duration: widget.debounceDuration);

  @override
  void didUpdateWidget(covariant AniListSearchBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.debounceDuration != widget.debounceDuration) {
      _debouncer.dispose();
      _debouncer = Debouncer(duration: widget.debounceDuration);
    }
  }

  void _onChanged(String value) {
    _debouncer.call(() {
      widget.onSearch.call(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AniListTextField(
      hintText: widget.hint,
      onTextChange: _onChanged,
      autoFocus: widget.autoFocus,
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

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }
}
