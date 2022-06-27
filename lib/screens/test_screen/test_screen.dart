import '../../components/button_common/common_button.dart';
import '../../general_exports.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 20),

                // TODO: the color used to test
                CommonButtonApp(
                    title: argTextButton,
                    width: 0.86,
                    backgroundColor: AppColors.green,
                    fontSize: 18,
                    borderColor: AppColors.black,
                    fontWeight: FontWeight.w600,
                    path: iconsIcEmail),
                const SizedBox(
                  height: 10,
                ),
                CommonButtonApp(
                  title: argTextButton,
                  width: 0.86,
                  backgroundColor: AppColors.green,
                  fontSize: 18,
                  borderColor: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
