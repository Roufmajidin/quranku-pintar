/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudiosGen {
  const $AssetsAudiosGen();

  /// File path: assets/audios/b.mp3
  String get b => 'assets/audios/b.mp3';

  /// File path: assets/audios/bismillah.m4a
  String get bismillah => 'assets/audios/bismillah.m4a';

  /// File path: assets/audios/likal.mp3
  String get likal => 'assets/audios/likal.mp3';

  /// File path: assets/audios/middun.m4a
  String get middun => 'assets/audios/middun.m4a';

  /// File path: assets/audios/sample1.mp3
  String get sample1 => 'assets/audios/sample1.mp3';

  /// File path: assets/audios/satu.mp3
  String get satuMp3 => 'assets/audios/satu.mp3';

  /// File path: assets/audios/satu.wav
  String get satuWav => 'assets/audios/satu.wav';

  /// File path: assets/audios/testt.wav
  String get testt => 'assets/audios/testt.wav';

  /// File path: assets/audios/yambu.mp3
  String get yambu => 'assets/audios/yambu.mp3';

  /// List of all assets
  List<String> get values =>
      [b, bismillah, likal, middun, sample1, satuMp3, satuWav, testt, yambu];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.png
  AssetGenImage get a1 => const AssetGenImage('assets/images/1.png');

  /// File path: assets/images/2.png
  AssetGenImage get a2 => const AssetGenImage('assets/images/2.png');

  /// File path: assets/images/3.png
  AssetGenImage get a3 => const AssetGenImage('assets/images/3.png');

  /// File path: assets/images/fly.png
  AssetGenImage get fly => const AssetGenImage('assets/images/fly.png');

  /// File path: assets/images/fly2.png
  AssetGenImage get fly2 => const AssetGenImage('assets/images/fly2.png');

  /// List of all assets
  List<AssetGenImage> get values => [a1, a2, a3, fly, fly2];
}

class Assets {
  Assets._();

  static const $AssetsAudiosGen audios = $AssetsAudiosGen();
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
