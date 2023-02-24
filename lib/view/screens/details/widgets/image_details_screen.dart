import '/index.dart';


Widget imageDetailsScreen() => SizedBox(
      height: getProportionateScreenHeight(380),
      width: SizeConfig.screenWidth,
      child: Stack(
        children: [
          Positioned(
            left: 0.0,
            top: 0.0,
            right: 0.0,
            child: SizedBox(
              height: getProportionateScreenHeight(300),
              width: SizeConfig.screenWidth,
              child: Image.asset(
                Images.car,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: getProportionateScreenWidth(20),
            top: getProportionateScreenHeight(40),
            right: getProportionateScreenWidth(20),
            child: Row(
              children: [
                IconBtnWidget(
                  color: AppColors.transWhite.withOpacity(0.6),
                  onPressed: () {},
                  icon: Images.fav,
                ),
                kWidthBox20,
                IconBtnWidget(
                  color: AppColors.transWhite.withOpacity(0.6),
                  onPressed: () {},
                  icon: Images.share,
                ),
                const Spacer(),
                IconBtnWidget(
                  color: AppColors.transWhite.withOpacity(0.6),
                  onPressed: () {},
                  icon: Images.back,
                  size: getProportionateScreenHeight(14),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: getProportionateScreenHeight(310) -
                getProportionateScreenHeight(30),
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CardDetailsCarWidget(
                    imagePath: Images.kM, title: 'المشي', num: '2000'),
                CardDetailsCarWidget(
                    imagePath: Images.buildTime,
                    title: 'سنة الصنع',
                    num: '2019'),
                CardDetailsCarWidget(
                    imagePath: Images.slindr, title: 'المحرك/سلندر', num: '6'),
              ],
            ),
          ),
        ],
      ),
    );