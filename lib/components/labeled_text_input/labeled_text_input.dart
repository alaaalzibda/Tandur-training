import '../../general_exports.dart';
import 'labeled_text_controller.dart';

class LabeledTextInput extends StatelessWidget {
  const LabeledTextInput({
    required this.label,
    this.textEditingController,
    Key? key,
    this.textInputAction,
    this.obscureText = false,
    this.suffixIcon,
    this.width,
    this.maxLength,
    this.onChanged,
    this.keyboardType,
  }) : super(key: key);

  final String label;
  final TextEditingController? textEditingController;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final IconData? suffixIcon;
  final double? width;
  final int? maxLength;
  final Function? onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LabeledTextController>(
      init: LabeledTextController(),
      global: false,
      builder: (LabeledTextController controller) => CommonTextInput(
        textEditingController:
            textEditingController ?? controller.textEditingController,
        onChanged: onChanged,
        style: CommonTextInputModel(
          obscureText: obscureText,
          foucsNode: controller.focus,
          maxLines: 1,
          textInputAction: textInputAction,
          maxLength: maxLength,
          textInputType: keyboardType,
          inputDecoration: InputDecoration(
            counter: const Offstage(),
            labelText: label,
            suffixIcon: suffixIcon != null
                ? Icon(
                    suffixIcon,
                    color: Color(
                      !controller.isFocused
                          ? AppColors.grey
                          : AppColors.primary,
                    ),
                  )
                : null,
            labelStyle: TextStyle(
              color: Color(
                !controller.isFocused ? AppColors.grey : AppColors.primary,
              ),
              fontSize: fontH3,
            ),
            enabledBorder: border(
              Color(
                AppColors.grey,
              ),
            ),
            focusedBorder: border(
              Color(
                AppColors.primary,
              ),
            ),
          ),
        ),
        containerStyle: CommonContainerModel(
          width: width ?? 1,
        ),
      ),
    );
  }

  OutlineInputBorder border(Color borderColor) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
