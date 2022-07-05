import '../../general_exports.dart';
// import 'input_text.dart';

class MyPlantScreen extends StatelessWidget {
  const MyPlantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['Planted', 'Already Harvested'];
    return SafeArea(
      child: Scaffold(
        // appBar:
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(
                  DEVICE_WIDTH * 0.1,
                  DEVICE_HEIGHT * 0.15,
                  DEVICE_WIDTH * 0.65,
                  DEVICE_HEIGHT * 0.01,
                ),
                child: CommonText(
                  text: 'my_plant'.tr,
                  style: CommonTextModel(
                    textAlign: TextAlign.left,
                    fontSize: fontH2,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.blackLight,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: DEVICE_WIDTH * 0.1,
                    vertical: DEVICE_HEIGHT * 0.01),
                child: Center(
                  child: CommonTextInput(
                    style: defaultTextInputStyles.textFieldInputStyle(
                      'search',
                      iconsIcSearch,
                      borderEnable: false,
                    ),
                    containerStyle:
                        defaultTextInputStyles.descriptionContainerModel(),
                  ),
                ),
              ),
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  // forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    tabs: tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
