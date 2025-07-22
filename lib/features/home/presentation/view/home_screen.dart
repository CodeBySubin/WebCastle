import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webcastle/core/widgets/loader.dart';
import 'package:webcastle/features/home/presentation/bloc/home_bloc.dart';
import 'package:webcastle/features/home/presentation/bloc/home_event.dart';
import 'package:webcastle/features/home/presentation/bloc/home_state.dart';
import 'package:webcastle/features/home/presentation/widgets/bottom_banner.dart';
import 'package:webcastle/features/home/presentation/widgets/rfq_banner.dart';
import 'package:webcastle/features/home/presentation/widgets/categories.dart';
import 'package:webcastle/features/home/presentation/widgets/home_appbar.dart';
import 'package:webcastle/features/home/presentation/widgets/latest_product.dart';
import 'package:webcastle/features/home/presentation/widgets/new_arrivals.dart';
import 'package:webcastle/features/home/presentation/widgets/perfume_card.dart';
import 'package:webcastle/features/home/presentation/widgets/shop_by_brands.dart';
import 'package:webcastle/features/home/presentation/widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const HomeEvent.fetchHome());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 125.h,
        automaticallyImplyLeading: false,
        flexibleSpace: HomeAppbar(),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.whenOrNull(
                loading: () => loader(),
                loaded: (home) => SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeSlider(
                        carouselItems:
                            home.data.homeFields.first.carouselItems!,
                      ),
                      ShopByBrands(brands: home.data.homeFields[1].brands!),
                      Categories(
                        categories: home.data.homeFields[2].categories!,
                      ),
                      RfqBanner(banner: home.data.homeFields[5].image.toString()),
                      NewArrivals(products: home.data.homeFields[4].products!),
                      PerfumeShowcase(
                        banners: home.data.homeFields[6].banners!,
                      ),
                      LatestProduct(
                        products: home.data.homeFields[7].products!,
                      ),
                      BottomBanner(banner: home.data.homeFields[8].banner!),
                    ],
                  ),
                ),
                error: (message) => Center(child: Text(message)),
              ) ??
              const Center(child: Text('Something went wrong.'));
        },
      ),
    );
  }
}
