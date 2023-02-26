import "/index.dart";

Widget gridList(HomeController controller,
        {void Function()? onTap, required int itemCount}) =>
    GridView.builder(
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: Dimensions.screenHeight / 4.8,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final list = controller.listGridCar[index];
        return GestureDetector(
          onTap: onTap ?? () => Get.to(() => const DetailsScreen()),
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.screenHeight / 4.8,
                child: Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: 0.0,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: getProportionateScreenHeight(1),
                            left: getProportionateScreenHeight(1),
                          ),
                          height: getProportionateScreenHeight(135),
                          width: Dimensions.screenWidth,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(list.image),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.0,
                        top: 0.0,
                        right: 0.0,
                        child: Container(
                          height: getProportionateScreenHeight(22),
                          width: Dimensions.screenWidth,
                          margin: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenHeight(1)),
                          color: AppColors.transWhite,
                          child: TextWidget(
                            list.name,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: getProportionateScreenHeight(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            detailsCarWidget(
                              imagePath: Images.privacy,
                              title: "مكفوله ل",
                              num: list.privacy.toString(),
                            ),
                            detailsCarWidget(
                              imagePath: Images.kM,
                              title: 'كم',
                              num: list.destanc.toString(),
                            ),
                            detailsCarWidget(
                              imagePath: Images.buildTime,
                              title: 'سنة الصنع',
                              num: list.buildTime.toString(),
                            ),
                            detailsCarWidget(
                              imagePath: Images.price,
                              title: 'السعر',
                              num: list.price.toString(),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        );
      },
    );
