import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyLargeSansSerifCollectionPrimary =>
      theme.textTheme.bodyLarge!.sansSerifCollection.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 19.fSize,
        fontWeight: FontWeight.w400,
      );
  // Display text style
  static get displaySmallRoboto =>
      theme.textTheme.displaySmall!.roboto.copyWith(
        fontSize: 36.fSize,
        fontWeight: FontWeight.w700,
      );
  // Genera text style
  static get generaWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 78.fSize,
        fontWeight: FontWeight.w600,
      ).genera;
  // Headline text style
  static get headlineMedium26 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 26.fSize,
      );
  static get headlineMediumRoboto =>
      theme.textTheme.headlineMedium!.roboto.copyWith(
        fontSize: 27.fSize,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 22.fSize,
      );
  static get titleMediumGenera => theme.textTheme.titleMedium!.genera.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGeneraPrimary =>
      theme.textTheme.titleMedium!.genera.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get genera {
    return copyWith(
      fontFamily: 'Genera',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get sansSerifCollection {
    return copyWith(
      fontFamily: 'Sans Serif Collection',
    );
  }
}
