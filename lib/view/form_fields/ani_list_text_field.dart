import 'package:anilist_client/core/app_config.dart';
import 'package:flutter/material.dart';

class AniListTextField extends StatefulWidget {
  const AniListTextField({
    super.key,
    this.controller,
    this.node,
    this.hintText = '',
    this.initialText = '',
    this.actions = const [],
    this.leading = const [],
  });

  final TextEditingController? controller;
  final FocusNode? node;
  final String hintText;
  final String initialText;
  final List<Widget> actions;
  final List<Widget> leading;

  @override
  State<AniListTextField> createState() => _AniListTextFieldState();
}

class _AniListTextFieldState extends State<AniListTextField> {
  late final _focus = widget.node ?? FocusNode();
  late final _controller = widget.controller ??
      TextEditingController(
        text: widget.initialText,
      );

  @override
  void dispose() {
    if (widget.node == null) {
      _focus.dispose();
    }

    if (widget.controller == null) {
      _controller.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (!_focus.hasFocus) {
          _focus.requestFocus();
        }
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppConfig.theme.dialogBackground,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 20,
          ),
          child: Row(
            children: [
              ...widget.leading,
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    focusNode: _focus,
                    controller: _controller,
                    decoration: InputDecoration.collapsed(
                      hintText: widget.hintText,
                      hintStyle: AppConfig.theme.textFieldTextStyle,
                    ),
                    style: AppConfig.theme.textFieldTextStyle,
                  ),
                ),
              ),
              ...widget.actions,
            ],
          ),
        ),
      ),
    );
  }
}
