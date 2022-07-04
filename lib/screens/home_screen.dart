import 'package:flutter_svg/svg.dart';

import '../general_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: ListView(
          children: [
            const SizedBox(
              height: 55,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Hai, Ryan!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff3A3F47),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12.11),
                    child: SvgPicture.asset(
                      iconsIcLocation,
                      color: const Color(0xff8B9A47),
                      height: 14,
                      width: 10.89,
                    ),
                  ),
                  Container(
                    child: const Text(
                      'Semampir, Kota Kediri',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B9A47),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Bagaimana cuaca hari ini?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff3A3F47),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _blocContainer(text: 'Curah Hujan', icon: iconsIcRain),
                  _blocContainer(text: 'Curah Hujan', icon: iconsIcTemperature),
                  _blocContainer(text: 'Humiditas', icon: iconsIcHumidity),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'Apa yang mereka tanam?',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff3A3F47),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Cari tanaman di sini ...',
                filled: true,
                fillColor: Color(0xffD6E3E2),
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            _cardBox(
                title: 'Cabai',
                numberOfUser: '20',
                percent: '90%',
                timeCard: '4 - 5 bulan'),
            const SizedBox(
              height: 22,
            ),
            _cardBox(
                title: 'Cabai',
                numberOfUser: '20',
                percent: '90%',
                timeCard: '4 - 5 bulan'),
          ],
        ),
      ),
    );
  }

  Widget _blocContainer({String? text, String? icon}) {
    return InkWell(
      child: Container(
        height: 120,
        width: DEVICE_WIDTH * 0.269,
        padding:
            const EdgeInsets.only(top: 18, bottom: 22, left: 12, right: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff8B9A47),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  icon!,
                  color: const Color(0xffEEEEEE),
                  height: 24,
                  width: 24,
                ),
                const Text(
                  '212',
                  style: TextStyle(
                      color: Color(0xffeeeeee), fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              text!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffeeeeee)),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _cardBox(
    {String? title, String? numberOfUser, String? percent, String? timeCard}) {
  return Container(
    child: Stack(
      children: [
        Image.asset(
          imageItemBackground,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Image.asset(
          imageItemShadowBackground,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    iconsVector,
                    color: const Color(0xffEEEEEE),
                    height: 12,
                    width: 12,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 6),
                    child: Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffeeeeee),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        iconsIcPerson,
                        color: const Color(0xffEEEEEE),
                        height: 12,
                        width: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6),
                        child: Text(
                          numberOfUser!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffeeeeee),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        iconsIcHappy,
                        color: const Color(0xffEEEEEE),
                        height: 12,
                        width: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6),
                        child: Text(
                          percent!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffeeeeee),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        iconsIcTime,
                        color: const Color(0xffEEEEEE),
                        height: 12,
                        width: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6),
                        child: Text(
                          timeCard!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffeeeeee),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
