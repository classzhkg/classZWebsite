import 'package:flutter/material.dart';

const num FIGMA_DESIGN_WIDTH = 1440;
const num FIGMA_DESIGN_HEIGHT = 5727;

// extension ResponsiveExtension on num {
//   double get w => this * SizeConfig.widthScaleFactor;
//   double get h => this * SizeConfig.heightScaleFactor;
//   double get fSize => this * SizeConfig.widthScaleFactor;
//   double get r => this * SizeConfig.widthScaleFactor;

//   // Calculate aspect ratio dynamically
//   double aspectHeight(double width, double height) => this * (height / width);
//   double aspectWidth(double width, double height) => this / (height / width);
// }

enum DeviceType { desktop, mobile, tablet }

typedef ResponsiveBuild = Widget Function(
    BuildContext context, Orientation orientation, DeviceType deviceType);

class Sizer extends StatelessWidget {
  final ResponsiveBuild builder;

  const Sizer({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils {
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double width;
  static late double height;

  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth;
      height = boxConstraints.maxHeight;
    } else {
      width = boxConstraints.maxHeight;
      height = boxConstraints.maxWidth;
    }

    print('Width: $width'); // Debug print

    if (width >= 1200) {
      deviceType = DeviceType.desktop;
    } else if (width >= 600) {
      deviceType = DeviceType.tablet;
    } else {
      deviceType = DeviceType.mobile;
    }

    print('DeviceType: $deviceType'); // Debug print
  }
}

// class SizeConfig {
//   static late MediaQueryData _mediaQueryData;
//   static late double screenWidth;
//   static late double screenHeight;
//   static late double blockSizeHorizontal;
//   static late double blockSizeVertical;

//   static late double _safeAreaHorizontal;
//   static late double _safeAreaVertical;
//   static late double safeBlockHorizontal;
//   static late double safeBlockVertical;

//   static late double widthScaleFactor;
//   static late double heightScaleFactor;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     blockSizeHorizontal = screenWidth / 100;
//     blockSizeVertical = screenHeight / 100;
//     // print(728.w);
//     _safeAreaHorizontal =
//         _mediaQueryData.padding.left + _mediaQueryData.padding.right;
//     _safeAreaVertical =
//         _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
//     safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
//     safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;

//     widthScaleFactor = screenWidth / FIGMA_DESIGN_WIDTH;
//     heightScaleFactor = screenHeight / FIGMA_DESIGN_HEIGHT;
//   }
// }

/// Utility class to handle responsive sizing and aspect ratios
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  /// Initialize sizing configuration
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * 0.024
        : screenWidth * 0.024;
  }

  /// Check if configuration is initialized
  static bool get isInitialized {
    try {
      return _mediaQueryData != null;
    } catch (e) {
      return false;
    }
  }
}

/// Extension for responsive sizing calculations
extension SizeExtension on num {
  /// Calculate width proportion of screen width
  double get w => (this / FIGMA_DESIGN_WIDTH) * SizeConfig.screenWidth;
  double get fSize => (this / FIGMA_DESIGN_WIDTH) * SizeConfig.screenWidth;
double get h => (this / FIGMA_DESIGN_HEIGHT) * SizeConfig.screenHeight;
  /// Calculate height proportion of container based on width and aspect ratio
  double proportionalHeight({
    required double originalWidth,
    required double originalHeight,
  }) {
    assert(SizeConfig.isInitialized, 'SizeConfig must be initialized first');
    assert(originalWidth > 0, 'Original width must be greater than 0');
    assert(originalHeight > 0, 'Original height must be greater than 0');

    final aspectRatio = originalWidth / originalHeight;
    final width = w;
    return width / aspectRatio;
  }

  /// Calculate position relative to container width
  double relativeToWidth(double containerWidth) {
    return this * containerWidth;
  }

  /// Calculate position relative to container height
  double relativeToHeight(double containerHeight) {
    return this * containerHeight;
  }

  /// Calculate font size relative to container height
  double fontSize(double containerHeight) {
    return this * containerHeight;
  }
}

/// Helper class for maintaining original dimensions
class OriginalDimension {
  final double width;
  final double height;

  const OriginalDimension({
    required this.width,
    required this.height,
  });

  double get aspectRatio => width / height;
}

class ImagePath {
  static const logo = "lib/assets/icons/logo.png";
  static const desktop = "lib/assets/icons/desktop.png";
  static const iphone = "lib/assets/images/iphone.png";
  static const vision1 = "lib/assets/images/vision1.png";
  static const vision2 = "lib/assets/images/vision2.png";
  static const vision3 = "lib/assets/images/vision3.png";
  static const discover1 = "lib/assets/images/discover1.png";
  static const discover2 = "lib/assets/images/discover2.png";
  static const discover3 = "lib/assets/images/discover3.png";
  static const qr = "lib/assets/images/qr.png";
  static const phone1 = "lib/assets/images/anything1.png";
  static const phone2 = "lib/assets/images/anything2.png";
  static const whatsappSvg = "lib/assets/icons/whatsapp.svg";
  static const mailSvg = "lib/assets/icons/mail.svg";
  static const likeSVg = "lib/assets/icons/like.svg";
}

void scrollToTarget(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}
