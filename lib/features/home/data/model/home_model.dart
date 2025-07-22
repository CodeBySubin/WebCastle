
import 'package:webcastle/features/home/domain/entities/entities.dart';

class HomeModel extends HomeEntity {
  HomeModel({
    required int errorCode,
    required String message,
    required HomeDataModel data,
  }) : super(errorCode: errorCode, message: message, data: data);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      errorCode: json['error_code'],
      message: json['message'],
      data: HomeDataModel.fromJson(json['data']),
    );
  }
}

class HomeDataModel extends HomeDataEntity {
  HomeDataModel({
    required List<HomeFieldModel> homeFields,
    required int notificationCount,
  }) : super(homeFields: homeFields, notificationCount: notificationCount);

  factory HomeDataModel.fromJson(Map<String, dynamic> json) {
    return HomeDataModel(
      homeFields: (json['home_fields'] as List?)
              ?.map((e) => HomeFieldModel.fromJson(e))
              .toList() ??
          [],
      notificationCount: json['notification_count'] ?? 0,
    );
  }
}

class HomeFieldModel extends HomeFieldEntity {
  HomeFieldModel({
    required String type,
    List<BannerModel>? carouselItems,
    List<BrandModel>? brands,
    List<BrandModel>? categories,
    String? image,
    int? collectionId,
    String? name,
    List<ProductModel>? products,
    List<BannerModel>? banners,
    BannerModel? banner,
  }) : super(
          type: type,
          carouselItems: carouselItems,
          brands: brands,
          categories: categories,
          image: image,
          collectionId: collectionId,
          name: name,
          products: products,
          banners: banners,
          banner: banner,
        );

  factory HomeFieldModel.fromJson(Map<String, dynamic> json) {
    return HomeFieldModel(
      type: json['type'] ?? '',
      carouselItems: (json['carousel_items'] as List?)
              ?.map((e) => BannerModel.fromJson(e))
              .toList() ??
          [],
      brands: (json['brands'] as List?)
              ?.map((e) => BrandModel.fromJson(e))
              .toList() ??
          [],
      categories: (json['categories'] as List?)
              ?.map((e) => BrandModel.fromJson(e))
              .toList() ??
          [],
      image: json['image'],
      collectionId: json['collection_id'],
      name: json['name'],
      products: (json['products'] as List?)
              ?.map((e) => ProductModel.fromJson(e))
              .toList() ??
          [],
      banners: (json['banners'] as List?)
              ?.map((e) => BannerModel.fromJson(e))
              .toList() ??
          [],
      banner: json['banner'] != null
          ? BannerModel.fromJson(json['banner'])
          : null,
    );
  }
}

class BannerModel extends BannerEntity {
  BannerModel({
    required int id,
    required String image,
    required String type,
  }) : super(id: id, image: image, type: type);

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      image: json['image'],
      type: json['type'],
    );
  }
}

class BrandModel extends BrandEntity {
  BrandModel({
    required int id,
    required String name,
    required String image,
  }) : super(id: id, name: name, image: image);

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      image: json['image'] ?? '',
    );
  }
}

class ProductModel extends ProductEntity {
  ProductModel({
    required int id,
    required String image,
    required String name,
    required String currency,
    required String unit,
    required bool wishlisted,
    required bool rfqStatus,
    required int cartCount,
    required int futureCartCount,
    required bool hasStock,
    required String price,
    required String actualPrice,
    required String offer,
    required List<dynamic> offerPrices,
  }) : super(
          id: id,
          image: image,
          name: name,
          currency: currency,
          unit: unit,
          wishlisted: wishlisted,
          rfqStatus: rfqStatus,
          cartCount: cartCount,
          futureCartCount: futureCartCount,
          hasStock: hasStock,
          price: price,
          actualPrice: actualPrice,
          offer: offer,
          offerPrices: offerPrices,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      currency: json['currency'],
      unit: json['unit'],
      wishlisted: json['wishlisted'],
      rfqStatus: json['rfq_status'],
      cartCount: json['cart_count'],
      futureCartCount: json['future_cart_count'],
      hasStock: json['has_stock'],
      price: json['price'],
      actualPrice: json['actual_price'],
      offer: json['offer'],
      offerPrices: json['offer_prices'] ?? [],
    );
  }
}
