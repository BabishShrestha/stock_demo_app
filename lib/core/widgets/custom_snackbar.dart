// import 'package:CgNet_app/core/constants/font_size_constants.dart';

import 'package:flutter/material.dart';

import '../utils/utils.dart';

// import 'package:cgnet_app/core/extensions/number_extensions.dart';
// import 'package:cgnet_app/core/extensions/context_extension.dart';

class CustomSnackbar extends StatelessWidget {
  final String? message;
  final Color? backgroundColor;
  final BuildContext context;

  CustomSnackbar({
    super.key,
    required this.message,
    required this.context,
    this.backgroundColor,
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: this,
          backgroundColor: backgroundColor ?? UiColors.errorColor,
          duration: const Duration(seconds: 2),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      message!,
      style: AppTextStyle.snackbarTextStyle,
    );
  }
}
