/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/HouschkaPro-Bold.ttf
  String get houschkaProBold => 'assets/fonts/HouschkaPro-Bold.ttf';

  /// File path: assets/fonts/HouschkaPro-BoldItalic.ttf
  String get houschkaProBoldItalic => 'assets/fonts/HouschkaPro-BoldItalic.ttf';

  /// File path: assets/fonts/HouschkaPro-DemiBold.ttf
  String get houschkaProDemiBold => 'assets/fonts/HouschkaPro-DemiBold.ttf';

  /// File path: assets/fonts/HouschkaPro-DemiBoldItalic.ttf
  String get houschkaProDemiBoldItalic =>
      'assets/fonts/HouschkaPro-DemiBoldItalic.ttf';

  /// File path: assets/fonts/HouschkaPro-ExtraBold.ttf
  String get houschkaProExtraBold => 'assets/fonts/HouschkaPro-ExtraBold.ttf';

  /// File path: assets/fonts/HouschkaPro-ExtraBoldItalic.ttf
  String get houschkaProExtraBoldItalic =>
      'assets/fonts/HouschkaPro-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/HouschkaPro-Light.ttf
  String get houschkaProLight => 'assets/fonts/HouschkaPro-Light.ttf';

  /// File path: assets/fonts/HouschkaPro-LightItalic.ttf
  String get houschkaProLightItalic =>
      'assets/fonts/HouschkaPro-LightItalic.ttf';

  /// File path: assets/fonts/HouschkaPro-Medium.ttf
  String get houschkaProMedium => 'assets/fonts/HouschkaPro-Medium.ttf';

  /// File path: assets/fonts/HouschkaPro-MediumItalic.ttf
  String get houschkaProMediumItalic =>
      'assets/fonts/HouschkaPro-MediumItalic.ttf';

  /// File path: assets/fonts/HouschkaPro-Thin.ttf
  String get houschkaProThin => 'assets/fonts/HouschkaPro-Thin.ttf';

  /// File path: assets/fonts/HouschkaPro-ThinItalic.ttf
  String get houschkaProThinItalic => 'assets/fonts/HouschkaPro-ThinItalic.ttf';

  /// List of all assets
  List<String> get values => [
        houschkaProBold,
        houschkaProBoldItalic,
        houschkaProDemiBold,
        houschkaProDemiBoldItalic,
        houschkaProExtraBold,
        houschkaProExtraBoldItalic,
        houschkaProLight,
        houschkaProLightItalic,
        houschkaProMedium,
        houschkaProMediumItalic,
        houschkaProThin,
        houschkaProThinItalic
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [appIcon];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
