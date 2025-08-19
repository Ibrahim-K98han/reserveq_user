
import 'package:equatable/equatable.dart';

import '../../presentation/utils/k_images.dart';

class DummyCategoryModel extends Equatable {
  final String icon;
  final String name;

  const DummyCategoryModel({required this.icon, required this.name});

  @override
  List<Object> get props => [icon, name];
}

final List<DummyCategoryModel> categoryList = [
  const DummyCategoryModel(icon: KImages.burger, name: 'Burgers'),
  const DummyCategoryModel(icon: KImages.snadwhich, name: 'Sandwich'),
  const DummyCategoryModel(icon: KImages.tea, name: 'Hot'),
  const DummyCategoryModel(icon: KImages.pizza, name: 'Pizza'),
  const DummyCategoryModel(icon: KImages.sweet, name: 'Sweet'),
  const DummyCategoryModel(icon: KImages.biriany, name: 'Biriany'),
  const DummyCategoryModel(icon: KImages.burger, name: 'Burgers'),
  const DummyCategoryModel(icon: KImages.snadwhich, name: 'Sandwich'),
  const DummyCategoryModel(icon: KImages.tea, name: 'Hot'),
  const DummyCategoryModel(icon: KImages.pizza, name: 'Pizza'),
  const DummyCategoryModel(icon: KImages.sweet, name: 'Sweet'),
  const DummyCategoryModel(icon: KImages.biriany, name: 'Biriany'),
];

const String privacy01 =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
''';
const String privacy02 =
    '''Magna etiam tempor orci eu lobortis elementum nibh. Vulputate enim nulla aliquet porttitor lacus. Orci sagittis eu volutpat odio. Cras semper auctor neque vitae tempus quam pellentesque nec. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Commodo elit at imperdiet dui. Nisi vitae suscipit tellus mauris a diam. Erat pellentesque adipiscing commodo elit at imperdiet dui. Mi ipsum faucibus vitae aliquet nec ullamcorper. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et.''';
const String privacy03 =
    '''Consequat id porta nibh venenatis cras sed. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Nibh tellus molestie nunc non blandit massa. Quam pellentesque nec nam aliquam sem et tortor consequat id. Faucibus vitae aliquet nec ullamcorper sit amet risus. Nunc consequat interdum varius sit amet. Eget magna fermentum iaculis eu non diam phasellus vestibulum. Pulvinar pellentesque habitant morbi tristique senectus et. Lorem donec massa sapien faucibus et molestie. Massa tempor nec feugiat nisl pretium fusce id. Lacinia at quis risus sed vulputate odio. Integer vitae justo eget magna fermentum iaculis. Eget gravida cum sociis natoque penatibus et magnis.''';

const String terms01 =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ''';
const String terms02 =
    '''Magna etiam tempor orci eu lobortis elementum nibh. Vulputate enim nulla aliquet porttitor lacus. Orci sagittis eu volutpat odio. Cras semper auctor neque vitae tempus quam pellentesque nec. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Commodo elit at imperdiet dui. Nisi vitae suscipit tellus mauris a diam. Erat pellentesque adipiscing commodo elit at imperdiet dui. Mi ipsum faucibus vitae aliquet nec ullamcorper. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et.''';
const String terms03 =
    '''Consequat id porta nibh venenatis cras sed. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Nibh tellus molestie nunc non blandit massa. Quam pellentesque nec nam aliquam sem et tortor consequat id. Faucibus vitae aliquet nec ullamcorper sit amet risus. Nunc consequat interdum varius sit amet. Eget magna fermentum iaculis eu non diam phasellus vestibulum. Pulvinar pellentesque habitant morbi tristique senectus et. Lorem donec massa sapien faucibus et molestie. Massa tempor nec feugiat nisl pretium fusce id. Lacinia at quis risus sed vulputate odio. Integer vitae justo eget magna fermentum iaculis. Eget gravida cum sociis natoque penatibus et magnis.''';
const String terms04 =
    '''Eget magna fermentum iaculis eu non diam phasellus vestibulum. Pulvinar pellentesque habitant morbi tristique senectus et. Lorem donec massa sapien faucibus et molestie. Massa tempor nec feugiat nisl pretium fusce id. Lacinia at quis risus sed vulputate odio. Integer vitae justo eget magna fermentum iaculis. Eget gravida cum sociis natoque penatibus et magnis.''';
const String terms05 =
    '''Eget magna fermentum iaculis eu non diam phasellus vestibulum. Pulvinar pellentesque habitant morbi tristique senectus et. Lorem donec massa sapien faucibus et molestie. Massa tempor nec feugiat nisl pretium fusce id. Lacinia at quis risus sed vulputate odio. Integer vitae justo eget magna fermentum iaculis. Eget gravida cum sociis natoque penatibus et magnis.''';
const String faqText =
    '''Vestibulum quis neque nunc. Maecenas pharetra libero id efficitur gravida. Aenean risus enim, coin quam in, consequat nec lacus. Aenean faucibus venenatis aliquet. Sed nulla quam, vehicula ut libe tpat quam. Phasellus semper vitae tellus sit amet scelerisque''';
const String serviceDetails =
    '''This is one of the best WordPress Theme. It is clean a fully responsivle, pixel perfect, our modern as designs WordPress Technologies. This WordPress theme is a any ki Custom Slider holo  the powerful jemon temon  website.This WordPress Theme has the powerful the me control panel ki holo as with lots.''';

const String notification01 =
    "You have canceled an order at Burger Hut. We will try to improve our service next time 🥲";
const String notification02 =
    "You have placed an order at Burger Hut and paid \$24. Your food will arrive soon. 😊";
const String notification03 =
    "You can now make multiple food orders at one time. You can also cancel your orders.";
const String notification04 =
    "Your credit card has been successfully linked with Food. Enjoy our services.";

class ServiceCat extends Equatable {
  final int id;
  final String name;

  const ServiceCat({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];
}

final List<ServiceCat> country = [
  const ServiceCat(id: 1, name: 'M'),
  const ServiceCat(id: 2, name: 'X'),
  const ServiceCat(id: 3, name: 'XL'),
  const ServiceCat(id: 4, name: 'XXL'),
  const ServiceCat(id: 6, name: 'S'),
  const ServiceCat(id: 7, name: 'ES'),
];
final List<ServiceCat> status = [
  const ServiceCat(id: 1, name: 'Active'),
  const ServiceCat(id: 2, name: 'Deactivate'),
];
