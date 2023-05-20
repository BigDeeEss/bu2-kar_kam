// Import flutter packages.
import 'package:flutter/material.dart';

// Import project-specific files.
import 'package:kar_kam/button_specs.dart';

/// Stores app data.
abstract class AppData extends ChangeNotifier {
  /// A scale factor which is applied to [appBarHeight] in order to calculate
  /// the [BottomAppBar] height in [BasePage] class.
  double appBarHeightScaleFactor = 1.0;

  /// The available screen dimensions.
  Rect? basePageViewRect;

  /// The anchor point for determining [Button] placement in [ButtonArray].
  late Alignment buttonAlignment;

  /// Represents the layout bounds for [ButtonArray].
  late Rect buttonArrayRect;

  /// The axis for [ButtonArray].
  late Axis buttonAxis;

  /// Coordinates for [ButtonArray].
  late List<double> buttonCoordinates;

  /// Defines the padding surrounding each button.
  EdgeInsetsDirectional get buttonPadding =>
      EdgeInsetsDirectional.all(buttonPaddingMainAxis);

  /// Main axis padding for in between buttons in [ButtonArray].
  late double buttonPaddingMainAxis;

  /// An alternative padding for in between buttons in [ButtonArray].
  late double buttonPaddingMainAxisAlt;

  /// Button radius for [Button] class.
  late double buttonRadius;

  /// List of [ButtonSpec] for [ButtonArray].
  List<ButtonSpec> buttonSpecList = [
    settingsButton,
    filesButton,
    homeButton,
  ];

  /// Whether [BoxedContainer] draws bounding boxes or not.
  late bool drawLayoutBounds;

  /// Whether [ButtonArray] includes [SlidingGuides] or not.
  late bool drawSlidingGuides;

  /// Represents whether init has completed or not.
  bool initComplete = false;

  /// Whether fade effect in SettingsPageListTile is active or not.
  late bool settingsPageListTileFadeEffect;

  /// Defines the icon radius in Button.
  late double settingsPageListTileIconSize;

  /// Defines the padding between tiles.
  late double settingsPageListTilePadding;

  /// Defines the tile corner radius.
  late double settingsPageListTileRadius;

  /// Updates [this] using [identifier] to determine which field to change and
  /// calling the appropriate change function using the unspecified [newValue].
  void change({
    required String identifier,
    var newValue,
    bool notify = true,
  });

  /// Initiates field variables; only called once after app start.
  void initButtonArrayRectAndCoords();
}