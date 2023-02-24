import "/index.dart";

Widget gridView(HomeController controller, [void Function()? onTap]) =>
    Container(
      height: getProportionateScreenHeight(605),
      width: SizeConfig.screenWidth,
      margin: EdgeInsets.all(getProportionateScreenHeight(2)),
      child: MasonryGridView.count(
        itemCount: controller.listImage.length,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        itemBuilder: (context, index) {
          final list = controller.listImage[index];
          return GestureDetector(
            onTap: onTap ?? () => Get.to(() => const DetailsScreen()),
            child: Column(
              children: [
                Container(
                  height: getProportionateScreenHeight(26),
                  width: SizeConfig.screenWidth,
                  margin: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(1)),
                  color: Colors.grey.shade300,
                  child: TextWidget(
                    text: "جى ام سى | يوكن | الفيْه الرابعه",
                    fontSize: getProportionateScreenWidth(13),
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(178),
                  child: Stack(
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
                            width: SizeConfig.screenWidth,
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
                          right: 0.0,
                          bottom: getProportionateScreenHeight(10.0),
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
      ),
    );
