class ProductModel {
  ProductModel({
      this.status, 
      this.requestId, 
      this.data,});

  ProductModel.fromJson(dynamic json) {
    status = json['status'];
    requestId = json['request_id'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  String? requestId;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['request_id'] = requestId;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.asin, 
      this.productTitle, 
      this.productPrice, 
      this.productOriginalPrice, 
      this.currency, 
      this.country, 
      this.productStarRating, 
      this.productNumRatings, 
      this.productUrl, 
      this.productPhoto, 
      this.productNumOffers, 
      this.productAvailability, 
      this.isBestSeller, 
      this.isAmazonChoice, 
      this.isPrime, 
      this.climatePledgeFriendly, 
      this.salesVolume, 
      this.aboutProduct, 
      this.productDescription, 
      this.productInformation, 
     // this.ratingDistribution,
      this.productPhotos, 
      this.productDetails, 
      this.customersSay, 
      this.reviewAspects, 
      this.categoryPath, 
      this.productVariations,});

  Data.fromJson(dynamic json) {
    asin = json['asin'];
    productTitle = json['product_title'];
    productPrice = json['product_price'];
    productOriginalPrice = json['product_original_price'];
    currency = json['currency'];
    country = json['country'];
    productStarRating = json['product_star_rating'];
    productNumRatings = json['product_num_ratings'];
    productUrl = json['product_url'];
    productPhoto = json['product_photo'];
    productNumOffers = json['product_num_offers'];
    productAvailability = json['product_availability'];
    isBestSeller = json['is_best_seller'];
    isAmazonChoice = json['is_amazon_choice'];
    isPrime = json['is_prime'];
    climatePledgeFriendly = json['climate_pledge_friendly'];
    salesVolume = json['sales_volume'];
    aboutProduct = json['about_product'] != null ? json['about_product'].cast<String>() : [];
    productDescription = json['product_description'];
    productInformation = json['product_information'] != null ? ProductInformation.fromJson(json['product_information']) : null;
  //  ratingDistribution = json['rating_distribution'] != null ? RatingDistribution.fromJson(json['rating_distribution']) : null;
    productPhotos = json['product_photos'] != null ? json['product_photos'].cast<String>() : [];
    productDetails = json['product_details'] != null ? ProductDetails.fromJson(json['product_details']) : null;
    customersSay = json['customers_say'];
    reviewAspects = json['review_aspects'] != null ? ReviewAspects.fromJson(json['review_aspects']) : null;
    if (json['category_path'] != null) {
      categoryPath = [];
      json['category_path'].forEach((v) {
        categoryPath?.add(CategoryPath.fromJson(v));
      });
    }
    productVariations = json['product_variations'] != null ? ProductVariations.fromJson(json['product_variations']) : null;
  }
  String? asin;
  String? productTitle;
  String? productPrice;
  dynamic productOriginalPrice;
  String? currency;
  String? country;
  String? productStarRating;
  int? productNumRatings;
  String? productUrl;
  String? productPhoto;
  int? productNumOffers;
  String? productAvailability;
  bool? isBestSeller;
  bool? isAmazonChoice;
  bool? isPrime;
  bool? climatePledgeFriendly;
  String? salesVolume;
  List<String>? aboutProduct;
  String? productDescription;
  ProductInformation? productInformation;
  // RatingDistribution? ratingDistribution;
  List<String>? productPhotos;
  ProductDetails? productDetails;
  String? customersSay;
  ReviewAspects? reviewAspects;
  List<CategoryPath>? categoryPath;
  ProductVariations? productVariations;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['asin'] = asin;
    map['product_title'] = productTitle;
    map['product_price'] = productPrice;
    map['product_original_price'] = productOriginalPrice;
    map['currency'] = currency;
    map['country'] = country;
    map['product_star_rating'] = productStarRating;
    map['product_num_ratings'] = productNumRatings;
    map['product_url'] = productUrl;
    map['product_photo'] = productPhoto;
    map['product_num_offers'] = productNumOffers;
    map['product_availability'] = productAvailability;
    map['is_best_seller'] = isBestSeller;
    map['is_amazon_choice'] = isAmazonChoice;
    map['is_prime'] = isPrime;
    map['climate_pledge_friendly'] = climatePledgeFriendly;
    map['sales_volume'] = salesVolume;
    map['about_product'] = aboutProduct;
    map['product_description'] = productDescription;
    if (productInformation != null) {
      map['product_information'] = productInformation?.toJson();
    }
    // if (ratingDistribution != null) {
    //   map['rating_distribution'] = ratingDistribution?.toJson();
    // }
    map['product_photos'] = productPhotos;
    if (productDetails != null) {
      map['product_details'] = productDetails?.toJson();
    }
    map['customers_say'] = customersSay;
    if (reviewAspects != null) {
      map['review_aspects'] = reviewAspects?.toJson();
    }
    if (categoryPath != null) {
      map['category_path'] = categoryPath?.map((v) => v.toJson()).toList();
    }
    if (productVariations != null) {
      map['product_variations'] = productVariations?.toJson();
    }
    return map;
  }

}

class ProductVariations {
  ProductVariations({
      this.size, 
      this.color, 
      this.serviceProvider,});

  ProductVariations.fromJson(dynamic json) {
    if (json['size'] != null) {
      size = [];
      json['size'].forEach((v) {
        size?.add(Size.fromJson(v));
      });
    }
    if (json['color'] != null) {
      color = [];
      json['color'].forEach((v) {
        color?.add(Color1.fromJson(v));
      });
    }
    if (json['service_provider'] != null) {
      serviceProvider = [];
      json['service_provider'].forEach((v) {
        serviceProvider?.add(ServiceProvider.fromJson(v));
      });
    }
  }
  List<Size>? size;
  List<Color1>? color;
  List<ServiceProvider>? serviceProvider;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (size != null) {
      map['size'] = size?.map((v) => v.toJson()).toList();
    }
    if (color != null) {
      map['color'] = color?.map((v) => v.toJson()).toList();
    }
    if (serviceProvider != null) {
      map['service_provider'] = serviceProvider?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class ServiceProvider {
  ServiceProvider({
      this.asin, 
      this.value, 
      this.isAvailable,});

  ServiceProvider.fromJson(dynamic json) {
    asin = json['asin'];
    value = json['value'];
    isAvailable = json['is_available'];
  }
  String? asin;
  String? value;
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['asin'] = asin;
    map['value'] = value;
    map['is_available'] = isAvailable;
    return map;
  }

}

class Color1 {
  Color1({
      this.asin, 
      this.value, 
      this.photo, 
      this.isAvailable,});

  Color1.fromJson(dynamic json) {
    asin = json['asin'];
    value = json['value'];
    photo = json['photo'];
    isAvailable = json['is_available'];
  }
  String? asin;
  String? value;
  String? photo;
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['asin'] = asin;
    map['value'] = value;
    map['photo'] = photo;
    map['is_available'] = isAvailable;
    return map;
  }

}

class Size {
  Size({
      this.asin, 
      this.value, 
      this.isAvailable,});

  Size.fromJson(dynamic json) {
    asin = json['asin'];
    value = json['value'];
    isAvailable = json['is_available'];
  }
  String? asin;
  String? value;
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['asin'] = asin;
    map['value'] = value;
    map['is_available'] = isAvailable;
    return map;
  }

}

class CategoryPath {
  CategoryPath({
      this.id, 
      this.name, 
      this.link,});

  CategoryPath.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
  }
  String? id;
  String? name;
  String? link;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['link'] = link;
    return map;
  }

}

class ReviewAspects {
  ReviewAspects({
      this.value, 
      this.easeofuse, 
      this.quality, 
      this.batterylife, 
      this.scratchresistance, 
      this.charging, 
      this.security, 
      this.soundquality,});

  ReviewAspects.fromJson(dynamic json) {
    value = json['Value'];
    easeofuse = json['Ease of use'];
    quality = json['Quality'];
    batterylife = json['Battery life'];
    scratchresistance = json['Scratch resistance'];
    charging = json['Charging'];
    security = json['Security'];
    soundquality = json['Sound quality'];
  }
  String? value;
  String? easeofuse;
  String? quality;
  String? batterylife;
  String? scratchresistance;
  String? charging;
  String? security;
  String? soundquality;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Value'] = value;
    map['Ease of use'] = easeofuse;
    map['Quality'] = quality;
    map['Battery life'] = batterylife;
    map['Scratch resistance'] = scratchresistance;
    map['Charging'] = charging;
    map['Security'] = security;
    map['Sound quality'] = soundquality;
    return map;
  }

}

class ProductDetails {
  ProductDetails({
      this.brand, 
      this.operatingSystem, 
      this.ramMemoryInstalledSize, 
      this.memoryStorageCapacity, 
      this.screenSize, 
      this.modelName, 
      this.wirelessCarrier, 
      this.cellularTechnology, 
      this.connectivityTechnology, 
      this.color,});

  ProductDetails.fromJson(dynamic json) {
    brand = json['Brand'];
    operatingSystem = json['Operating System'];
    ramMemoryInstalledSize = json['Ram Memory Installed Size'];
    memoryStorageCapacity = json['Memory Storage Capacity'];
    screenSize = json['Screen Size'];
    modelName = json['Model Name'];
    wirelessCarrier = json['Wireless Carrier'];
    cellularTechnology = json['Cellular Technology'];
    connectivityTechnology = json['Connectivity Technology'];
    color = json['Color'];
  }
  String? brand;
  String? operatingSystem;
  String? ramMemoryInstalledSize;
  String? memoryStorageCapacity;
  String? screenSize;
  String? modelName;
  String? wirelessCarrier;
  String? cellularTechnology;
  String? connectivityTechnology;
  String? color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Brand'] = brand;
    map['Operating System'] = operatingSystem;
    map['Ram Memory Installed Size'] = ramMemoryInstalledSize;
    map['Memory Storage Capacity'] = memoryStorageCapacity;
    map['Screen Size'] = screenSize;
    map['Model Name'] = modelName;
    map['Wireless Carrier'] = wirelessCarrier;
    map['Cellular Technology'] = cellularTechnology;
    map['Connectivity Technology'] = connectivityTechnology;
    map['Color'] = color;
    return map;
  }

}

// class RatingDistribution {
//   RatingDistribution({
//       this.,
//       this.,
//       this.,
//       this.,
//       this.,});
//
//   RatingDistribution.fromJson(dynamic json) {
//      = json['1'];
//      = json['2'];
//      = json['3'];
//      = json['4'];
//      = json['5'];
//   }
//   String? ;
//   String? ;
//   String? ;
//   String? ;
//   String? ;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['1'] = ;
//     map['2'] = ;
//     map['3'] = ;
//     map['4'] = ;
//     map['5'] = ;
//     return map;
//   }

// }

class ProductInformation {
  ProductInformation({
      this.productDimensions, 
      this.itemWeight, 
      this.asin, 
      this.itemmodelnumber, 
      this.batteries, 
      this.bestSellersRank, 
      this.os, 
      this.ram, 
      this.wirelesscommunicationtechnologies, 
      this.connectivitytechnologies, 
      this.gps, 
      this.specialfeatures, 
      this.otherdisplayfeatures, 
      this.humanInterfaceInput, 
      this.othercamerafeatures, 
      this.formFactor, 
      this.color, 
      this.batteryPowerRating, 
      this.whatsinthebox, 
      this.manufacturer, 
      this.dateFirstAvailable, 
      this.memoryStorageCapacity, 
      this.standingscreendisplaysize, 
      this.ramMemoryInstalledSize, 
      this.weight,});

  ProductInformation.fromJson(dynamic json) {
    productDimensions = json['Product Dimensions'];
    itemWeight = json['Item Weight'];
    asin = json['ASIN'];
    itemmodelnumber = json['Item model number'];
    batteries = json['Batteries'];
    bestSellersRank = json['Best Sellers Rank'];
    os = json['OS'];
    ram = json['RAM'];
    wirelesscommunicationtechnologies = json['Wireless communication technologies'];
    connectivitytechnologies = json['Connectivity technologies'];
    gps = json['GPS'];
    specialfeatures = json['Special features'];
    otherdisplayfeatures = json['Other display features'];
    humanInterfaceInput = json['Human Interface Input'];
    othercamerafeatures = json['Other camera features'];
    formFactor = json['Form Factor'];
    color = json['Color'];
    batteryPowerRating = json['Battery Power Rating'];
    whatsinthebox = json['Whats in the box'];
    manufacturer = json['Manufacturer'];
    dateFirstAvailable = json['Date First Available'];
    memoryStorageCapacity = json['Memory Storage Capacity'];
    standingscreendisplaysize = json['Standing screen display size'];
    ramMemoryInstalledSize = json['Ram Memory Installed Size'];
    weight = json['Weight'];
  }
  String? productDimensions;
  String? itemWeight;
  String? asin;
  String? itemmodelnumber;
  String? batteries;
  String? bestSellersRank;
  String? os;
  String? ram;
  String? wirelesscommunicationtechnologies;
  String? connectivitytechnologies;
  String? gps;
  String? specialfeatures;
  String? otherdisplayfeatures;
  String? humanInterfaceInput;
  String? othercamerafeatures;
  String? formFactor;
  String? color;
  String? batteryPowerRating;
  String? whatsinthebox;
  String? manufacturer;
  String? dateFirstAvailable;
  String? memoryStorageCapacity;
  String? standingscreendisplaysize;
  String? ramMemoryInstalledSize;
  String? weight;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Product Dimensions'] = productDimensions;
    map['Item Weight'] = itemWeight;
    map['ASIN'] = asin;
    map['Item model number'] = itemmodelnumber;
    map['Batteries'] = batteries;
    map['Best Sellers Rank'] = bestSellersRank;
    map['OS'] = os;
    map['RAM'] = ram;
    map['Wireless communication technologies'] = wirelesscommunicationtechnologies;
    map['Connectivity technologies'] = connectivitytechnologies;
    map['GPS'] = gps;
    map['Special features'] = specialfeatures;
    map['Other display features'] = otherdisplayfeatures;
    map['Human Interface Input'] = humanInterfaceInput;
    map['Other camera features'] = othercamerafeatures;
    map['Form Factor'] = formFactor;
    map['Color'] = color;
    map['Battery Power Rating'] = batteryPowerRating;
    map['Whats in the box'] = whatsinthebox;
    map['Manufacturer'] = manufacturer;
    map['Date First Available'] = dateFirstAvailable;
    map['Memory Storage Capacity'] = memoryStorageCapacity;
    map['Standing screen display size'] = standingscreendisplaysize;
    map['Ram Memory Installed Size'] = ramMemoryInstalledSize;
    map['Weight'] = weight;
    return map;
  }

}