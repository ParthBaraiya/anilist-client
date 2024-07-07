import 'package:anilist_client/core/app_config.dart';
import 'package:anilist_client/utilities/bloc_states/data_fetch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// NOTE: Make sure to use this widget under constrained widget.
///
/// Like, do not use directly in [ListView] or [SingleChildScrollView]. It will
/// cause issue in rendering layout.
///
class DataPlaceholder extends StatelessWidget {
  const DataPlaceholder({
    super.key,
    required this.state,
    this.configs,
  });

  final DataFetchState state;
  final Map<NetworkState, NetworkStateConfigurations>? configs;

  @override
  Widget build(BuildContext context) {
    final config = configs?[state.state] ?? _defaults[state.state]!;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (config.vector != null) ...[
            SvgPicture.asset(
              config.vector!,
              width: 200,
            ),
            SizedBox(height: 60),
          ],
          Text(
            config.title,
            style: AppConfig.theme.titleSmallTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12),
          Text(
            config.subtitle,
            style: AppConfig.theme.bodyTextStyle,
            textAlign: TextAlign.center,
          ),
          if (state.state.isLoading) ...[
            SizedBox(height: 20),
            SpinKitRipple(
              size: 60,
              color: AppConfig.theme.dialogSecondaryBackground,
            )
          ],
          if (config.onRetry != null) ...[
            SizedBox(height: 40),
            // PrimaryButton(
            //   onTap: config.onRetry!,
            //   title: config.retryTitle,
            // )
          ],
        ],
      ),
    );
  }

  static const _defaults = <NetworkState, NetworkStateConfigurations>{
    NetworkState.idle: NetworkStateConfigurations(
      title: 'Oops!',
      subtitle: 'Something isn\'t right here.',
    ),
    NetworkState.loading: NetworkStateConfigurations(
      title: 'Loading data',
      subtitle: 'Please wait while we load the data.',
    ),
    NetworkState.success: NetworkStateConfigurations(
      title: 'Not Found',
      subtitle: 'The data you are looking for is no where to be found!',
    ),
    NetworkState.error: NetworkStateConfigurations(
      title: 'Oops!',
      subtitle:
          'Something is wrong here! Please check your internet connection '
          'or the data you are looking for and retry.',
    ),
  };
}

class NetworkStateConfigurations {
  final String? vector;
  final String title;
  final String subtitle;
  final VoidCallback? onRetry;
  final String retryTitle;

  const NetworkStateConfigurations({
    required this.title,
    required this.subtitle,
    this.vector,
    this.onRetry,
    this.retryTitle = 'Retry',
  });

  NetworkStateConfigurations copyWith({
    String? vector,
    String? title,
    String? subtitle,
    String? retryTitle,
    VoidCallback? onRetry,
  }) {
    return NetworkStateConfigurations(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      vector: vector ?? this.vector,
      retryTitle: retryTitle ?? this.retryTitle,
      onRetry: onRetry ?? this.onRetry,
    );
  }
}
