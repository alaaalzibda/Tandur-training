import '../../general_exports.dart';

class EmptyData extends StatelessWidget {
  const EmptyData({
    this.languageKey = 'noDataFound',
    Key? key,
  }) : super(key: key);

  final String languageKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CommonText(
        text: languageKey,
      ),
    );
  }
}
