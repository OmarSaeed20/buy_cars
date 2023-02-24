import '/index.dart';


Widget bottomNavigationBar() => Container(
      height: getProportionateScreenHeight(60),
      padding: EdgeInsetsDirectional.only(
        start: getProportionateScreenWidth(10),
        end: getProportionateScreenWidth(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlineBtnWidget(
            title: 'احجز السيارة',
            icon: Images.book,
            onTap: () {},
          ),
          OutlineBtnWidget(
            title: 'موقع السيارة',
            icon: Images.location,
            backgroundColor: AppColors.black,
            color: AppColors.white,
            onTap: () {},
          ),
          IconBtnWidget(
            onPressed: () {},
            icon: Images.chat,
            color: AppColors.blue.withOpacity(0.6),
            size: getProportionateScreenHeight(16),
          ),
          IconBtnWidget(
            onPressed: () {},
            icon: Images.call,
            color: AppColors.blue.withOpacity(0.6),
          ),
        ],
      ),
    );
