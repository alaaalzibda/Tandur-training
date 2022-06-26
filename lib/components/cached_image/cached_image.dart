import 'package:cached_network_image/cached_network_image.dart';

import '../../general_exports.dart';

class CachedImage extends StatelessWidget {
  CachedImage({
    required this.image,
    this.topLeftBorder = 10,
    this.topRightBorder = 10,
    this.bottomLeftBorder = 10,
    this.bottomRightBorder = 10,
    this.height,
    this.width,
    this.withOverlay = false,
    this.withPlaceHolder = false,
    this.fit = BoxFit.fill,
    Key? key,
  }) : super(key: key);

  final String? image;
  final double? height;
  final double? width;
  final double? topLeftBorder;
  final double? topRightBorder;
  final double? bottomLeftBorder;
  final double? bottomRightBorder;
  final bool withOverlay;
  final bool withPlaceHolder;
  final BoxFit fit;
  final CommonContainerModel containerStyles = CommonContainerModel();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftBorder!),
            topRight: Radius.circular(topRightBorder!),
            bottomLeft: Radius.circular(bottomLeftBorder!),
            bottomRight: Radius.circular(bottomRightBorder!),
          ),
          child: CachedNetworkImage(
            placeholder: (BuildContext context, String url) => withPlaceHolder
                ? Align(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Padding(
                        padding: EdgeInsets.all(DEVICE_WIDTH * 0.1),
                        child: CircularProgressIndicator(
                          color: Color(AppColors.primary),
                        ),
                      ),
                    ),
                  )
                // Image.asset(
                //     YELLOW_LOADING_GIF_IMAGE,
                //     fit: BoxFit.cover,
                //   )
                : const SizedBox(),
            imageUrl: image!,
            fit: fit,
            height: height,
            width: width,
          ),
        ),
        if (withOverlay)
          CommonContainer(
              style: containerStyles.copyWith(
            height: height,
            width: width,
            topLeftRadius: topLeftBorder,
            topRightRadius: topRightBorder,
            bottomLeftRadius: bottomLeftBorder,
            bottomRightRadius: bottomRightBorder,
          ))
        else
          const SizedBox(),
      ],
    );
  }
}
