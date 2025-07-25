class HomeEntity {
  final int errorCode;
  final String message;
  final HomeDataEntity data;

  HomeEntity({
    required this.errorCode,
    required this.message,
    required this.data,
  });

  HomeEntity copyWith({
    int? errorCode,
    String? message,
    HomeDataEntity? data,
  }) {
    return HomeEntity(
      errorCode: errorCode ?? this.errorCode,
      message: message ?? this.message,
      data: data ?? this.data,
    );
  }
}

class HomeDataEntity {
  final List<HomeFieldEntity> homeFields;
  final int notificationCount;

  HomeDataEntity({
    required this.homeFields,
    required this.notificationCount,
  });

  HomeDataEntity copyWith({
    List<HomeFieldEntity>? homeFields,
    int? notificationCount,
  }) {
    return HomeDataEntity(
      homeFields: homeFields ?? this.homeFields,
      notificationCount: notificationCount ?? this.notificationCount,
    );
  }
}

class HomeFieldEntity {
  final String type;
  final List<BannerEntity>? carouselItems;
  final List<BrandEntity>? brands;
  final List<BrandEntity>? categories;
  final String? image;
  final int? collectionId;
  final String? name;
  final List<ProductEntity>? products;
  final List<BannerEntity>? banners;
  final BannerEntity? banner;

  HomeFieldEntity({
    required this.type,
    this.carouselItems,
    this.brands,
    this.categories,
    this.image,
    this.collectionId,
    this.name,
    this.products,
    this.banners,
    this.banner,
  });

  HomeFieldEntity copyWith({
    String? type,
    List<BannerEntity>? carouselItems,
    List<BrandEntity>? brands,
    List<BrandEntity>? categories,
    String? image,
    int? collectionId,
    String? name,
    List<ProductEntity>? products,
    List<BannerEntity>? banners,
    BannerEntity? banner,
  }) {
    return HomeFieldEntity(
      type: type ?? this.type,
      carouselItems: carouselItems ?? this.carouselItems,
      brands: brands ?? this.brands,
      categories: categories ?? this.categories,
      image: image ?? this.image,
      collectionId: collectionId ?? this.collectionId,
      name: name ?? this.name,
      products: products ?? this.products,
      banners: banners ?? this.banners,
      banner: banner ?? this.banner,
    );
  }
}

class BannerEntity {
  final int id;
  final String image;
  final String type;
  final String? redirectType;
  final int? redirectId;
  final String? redirectSlug;

  BannerEntity({
    required this.id,
    required this.image,
    required this.type,
    this.redirectType,
    this.redirectId,
    this.redirectSlug,
  });

  BannerEntity copyWith({
    int? id,
    String? image,
    String? type,
    String? redirectType,
    int? redirectId,
    String? redirectSlug,
  }) {
    return BannerEntity(
      id: id ?? this.id,
      image: image ?? this.image,
      type: type ?? this.type,
      redirectType: redirectType ?? this.redirectType,
      redirectId: redirectId ?? this.redirectId,
      redirectSlug: redirectSlug ?? this.redirectSlug,
    );
  }
}

class BrandEntity {
  final int id;
  final String name;
  final String image;
  final String? slug;

  BrandEntity({
    required this.id,
    required this.name,
    required this.image,
    this.slug,
  });

  BrandEntity copyWith({
    int? id,
    String? name,
    String? image,
    String? slug,
  }) {
    return BrandEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      slug: slug ?? this.slug,
    );
  }
}

class ProductEntity {
  final int id;
  final String image;
  final String name;
  final String currency;
  final String unit;
  final bool wishlisted;
  final bool rfqStatus;
  final int cartCount;
  final int futureCartCount;
  final bool hasStock;
  final String price;
  final String actualPrice;
  final String offer;
  final List<dynamic> offerPrices;

  // UI State Fields
  final bool isFavorite;
  final int count;

  // Optional Metadata
  final String? description;
  final String? brand;
  final int? brandId;
  final bool? isNew;

  ProductEntity({
    required this.id,
    required this.image,
    required this.name,
    required this.currency,
    required this.unit,
    required this.wishlisted,
    required this.rfqStatus,
    required this.cartCount,
    required this.futureCartCount,
    required this.hasStock,
    required this.price,
    required this.actualPrice,
    required this.offer,
    required this.offerPrices,
    this.isFavorite = false,
    this.count = 0,
    this.description,
    this.brand,
    this.brandId,
    this.isNew,
  });

  ProductEntity copyWith({
    int? id,
    String? image,
    String? name,
    String? currency,
    String? unit,
    bool? wishlisted,
    bool? rfqStatus,
    int? cartCount,
    int? futureCartCount,
    bool? hasStock,
    String? price,
    String? actualPrice,
    String? offer,
    List<dynamic>? offerPrices,
    bool? isFavorite,
    int? count,
    String? description,
    String? brand,
    int? brandId,
    bool? isNew,
  }) {
    return ProductEntity(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      currency: currency ?? this.currency,
      unit: unit ?? this.unit,
      wishlisted: wishlisted ?? this.wishlisted,
      rfqStatus: rfqStatus ?? this.rfqStatus,
      cartCount: cartCount ?? this.cartCount,
      futureCartCount: futureCartCount ?? this.futureCartCount,
      hasStock: hasStock ?? this.hasStock,
      price: price ?? this.price,
      actualPrice: actualPrice ?? this.actualPrice,
      offer: offer ?? this.offer,
      offerPrices: offerPrices ?? this.offerPrices,
      isFavorite: isFavorite ?? this.isFavorite,
      count: count ?? this.count,
      description: description ?? this.description,
      brand: brand ?? this.brand,
      brandId: brandId ?? this.brandId,
      isNew: isNew ?? this.isNew,
    );
  }
}
