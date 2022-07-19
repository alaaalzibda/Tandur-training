import '../../general_exports.dart';

class PlantsType extends StatelessWidget {
  const PlantsType({
    this.plantName,
    this.image,
    this.shadow,
    Key? key,
  }) : super(key: key);

  final String? plantName;
  final String? image;
  final String? shadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(AppColors.primary),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Image.asset(
            image!,
            fit: BoxFit.fill,
          ),
          Image.asset(
            shadow!,
            fit: BoxFit.fill,
          ),
          Positioned(
            child: CommonText(
              containerStyle: CommonContainerModel(
                padding: 0.02,
              ),
              text: plantName,
              style: defaultTextStyles.h5MediumStyleWhite(),
            ),
          ),
        ],
      ),
    );
  }
}
