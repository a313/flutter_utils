import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  bool get isSmallScene => MediaQuery.of(this).size.width <= 340;
  bool get isMediumScene => MediaQuery.of(this).size.width <= 375;

  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Color get primarySchemeColor => colorScheme.primary;
  Color get onPrimarySchemeColor => colorScheme.onPrimary;
  Color get primaryContainerSchemeColor => colorScheme.primaryContainer;
  Color get onPrimaryContainerSchemeColor => colorScheme.onPrimaryContainer;
  Color get primaryFixedSchemeColor => colorScheme.primaryFixed;
  Color get primaryFixedDimSchemeColor => colorScheme.primaryFixedDim;
  Color get onPrimaryFixedSchemeColor => colorScheme.onPrimaryFixed;
  Color get onPrimaryFixedVariantSchemeColor =>
      colorScheme.onPrimaryFixedVariant;
  Color get secondarySchemeColor => colorScheme.secondary;
  Color get onSecondarySchemeColor => colorScheme.onSecondary;
  Color get secondaryContainerSchemeColor => colorScheme.secondaryContainer;
  Color get onSecondaryContainerSchemeColor => colorScheme.onSecondaryContainer;
  Color get secondaryFixedSchemeColor => colorScheme.secondaryFixed;
  Color get secondaryFixedDimSchemeColor => colorScheme.secondaryFixedDim;
  Color get onSecondaryFixedSchemeColor => colorScheme.onSecondaryFixed;
  Color get onSecondaryFixedVariantSchemeColor =>
      colorScheme.onSecondaryFixedVariant;
  Color get tertiarySchemeColor => colorScheme.tertiary;
  Color get onTertiarySchemeColor => colorScheme.onTertiary;
  Color get tertiaryContainerSchemeColor => colorScheme.tertiaryContainer;
  Color get onTertiaryContainerSchemeColor => colorScheme.onTertiaryContainer;
  Color get tertiaryFixedSchemeColor => colorScheme.tertiaryFixed;
  Color get tertiaryFixedDimSchemeColor => colorScheme.tertiaryFixedDim;
  Color get onTertiaryFixedSchemeColor => colorScheme.onTertiaryFixed;
  Color get onTertiaryFixedVariantSchemeColor =>
      colorScheme.onTertiaryFixedVariant;
  Color get errorSchemeColor => colorScheme.error;
  Color get onErrorSchemeColor => colorScheme.onError;
  Color get errorContainerSchemeColor => colorScheme.errorContainer;
  Color get onErrorContainerSchemeColor => colorScheme.onErrorContainer;
  Color get surfaceSchemeColor => colorScheme.surface;
  Color get onSurfaceSchemeColor => colorScheme.onSurface;
  Color get surfaceDimSchemeColor => colorScheme.surfaceDim;
  Color get surfaceBrightSchemeColor => colorScheme.surfaceBright;
  Color get surfaceContainerLowestSchemeColor =>
      colorScheme.surfaceContainerLowest;
  Color get surfaceContainerLowSchemeColor => colorScheme.surfaceContainerLow;
  Color get surfaceContainerSchemeColor => colorScheme.surfaceContainer;
  Color get surfaceContainerHighSchemeColor => colorScheme.surfaceContainerHigh;
  Color get surfaceContainerHighestSchemeColor =>
      colorScheme.surfaceContainerHighest;
  Color get onSurfaceVariantSchemeColor => colorScheme.onSurfaceVariant;
  Color get outlineSchemeColor => colorScheme.outline;
  Color get outlineVariantSchemeColor => colorScheme.outlineVariant;
  Color get shadowSchemeColor => colorScheme.shadow;
  Color get scrimSchemeColor => colorScheme.scrim;
  Color get inverseSurfaceSchemeColor => colorScheme.inverseSurface;
  Color get onInverseSurfaceSchemeColor => colorScheme.onInverseSurface;
  Color get inversePrimarySchemeColor => colorScheme.inversePrimary;
  Color get surfaceTintSchemeColor => colorScheme.surfaceTint;

  Color get hintColor => theme.hintColor;
  Color get cardColor => theme.cardColor;
  Color get focusColor => theme.focusColor;
  Color get hoverColor => theme.hoverColor;
  Color get indicatorColor => theme.indicatorColor;
  Color get shadowColor => theme.shadowColor;
  Color get splashColor => theme.splashColor;
  Color get canvasColor => theme.canvasColor;
  Color get dividerColor => theme.dividerColor;
  Color get primaryColor => theme.primaryColor;
  Color get primaryColorDark => theme.primaryColorDark;
  Color get primaryColorLight => theme.primaryColorLight;
  Color get highlightColor => theme.highlightColor;
  Color get disabledColor => theme.disabledColor;
  Color get dialogBackgroundColor => theme.dialogBackgroundColor;
  Color get secondaryHeaderColor => theme.secondaryHeaderColor;
  Color get unselectedWidgetColor => theme.unselectedWidgetColor;
}
