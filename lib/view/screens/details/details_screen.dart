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
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(10),
                  horizontal: getProportionateScreenWidth(16)),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        height: getProportionateScreenHeight(30),
                        width: getProportionateScreenHeight(25),
                        alignment: Alignment.bottomRight,
                        child: TextWidget(
                          'د.ك',
                          color: AppColors.black,
                          // textAlign: TextAlign.justify,
                          fontWeight: FontWeight.w700,
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                      kWidthBox5,
                      TextWidget(
                        '8,700',
                        fontWeight: FontWeight.w700,
                        fontSize: getProportionateScreenWidth(28),
                      ),
                      const Spacer(),
                      TextWidget(
                        'يوكن بحالة جيدة',
                        fontSize: getProportionateScreenWidth(22),
                      ),
                    ],
                  ),
                  kHeightBox10,
                  Container(
                    padding: EdgeInsetsDirectional.only(
                        top: getProportionateScreenWidth(5),
                        bottom: getProportionateScreenWidth(5),
                        end: getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 177, 65, 30),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextWidget(
                          'مكفولة حتي 70000 كم',
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
                  kHeightBox10,
                ],
              ),
            ),
            detailOfCar(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Column(children: [
                const TextWidget(
                  textAlign: TextAlign.right,
                  kCarInfo,
                  fontWeight: FontWeight.w600,
                ),
                checkOtherCar(),
              ]),
            ),
            GetBuilder<HomeController>(
              builder: (controller) => gridList(controller,
                  itemCount: controller.listGridCar.take(4).length),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
