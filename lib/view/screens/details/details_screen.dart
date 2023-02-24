import '/index.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            imageDetailsScreen(),
            Padding(
              padding: paddingSTEB,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      TextWidget(
                        text: 'د.ك',
                        color: AppColors.grey,
                        textAlign: TextAlign.justify,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(14),
                      ),
                      kWidthBox5,
                      TextWidget(
                        text: '8,700',
                        fontWeight: FontWeight.w700,
                        fontSize: getProportionateScreenWidth(28),
                      ),
                      const Spacer(),
                      TextWidget(
                        text: 'يوكن بحالة جيدة',
                        fontSize: getProportionateScreenWidth(22),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                        top: getProportionateScreenWidth(5),
                        bottom: getProportionateScreenWidth(5),
                        end: getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: Colors.brown.shade400,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextWidget(
                          text: 'مكفولة حتي 70000 كم',
                          color: AppColors.white,
                          fontSize: getProportionateScreenWidth(18),
                        ),
                        kWidthBox20,
                        SvgPicture.asset(
                          Images.makfula,
                          width: getProportionateScreenHeight(20),
                          height: getProportionateScreenHeight(20),
                        ),
                      ],
                    ),
                  ),
                  kHeightBox20,
                  detailOfCar(),
                  kHeightBox10,
                  const TextWidget(textAlign: TextAlign.right, text: kCarInfo),
                  checkOtherCar()
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(440),
              child: GetBuilder<HomeController>(
                builder: (controller) => gridView(controller),
              ),
            ),
            // kHeightBox20,
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
