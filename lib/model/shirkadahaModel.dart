import 'package:degdeg_app/model/adeegyadaModel.dart';

class ShirkadaModel {
  String? name;
  String? img;
  List<AdeegyadaModel>? adeegyada;
  List<SlidersModel>? sliders;
  CompanyDetailModel? companyDetail;

  ShirkadaModel({
    required this.name,
    required this.img,
    this.adeegyada,
    this.sliders,
    this.companyDetail,
  });

  factory ShirkadaModel.fromJson(Map<String, dynamic> json) {
    return ShirkadaModel(
      name: json['name'],
      img: json['logo'],
      adeegyada: json['packages'] != null
          ? (json['packages'] as List)
              .map((e) => AdeegyadaModel.fromJson(e))
              .toList()
          : null,
      sliders: json['slider'] != null
          ? (json['slider'] as List)
              .map((e) => SlidersModel.fromJson(e))
              .toList()
          : null,
      companyDetail: json['company_detail'] != null
          ? CompanyDetailModel.fromJson(json['company_detail'])
          : null,
    );
  }

  toJson() {}
}

class SlidersModel {
  final String? subject;
  final String? slider;
  final String? url;

  SlidersModel({
    required this.subject,
    required this.slider,
    this.url,
  });

  factory SlidersModel.fromJson(Map<String, dynamic> json) {
    return SlidersModel(
      subject: json['subject'] ?? '',
      slider: json['slider'] ?? '',
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subject': subject,
      'slider': slider,
      'url': url,
    };
  }
}

class CompanyDetailModel {
  final String? phone;
  final String? mobile;
  final String? whatsappLink;

  CompanyDetailModel({
    this.phone,
    this.mobile,
    this.whatsappLink,
  });

  factory CompanyDetailModel.fromJson(Map<String, dynamic> json) {
    return CompanyDetailModel(
      phone: json['phone'],
      mobile: json['mobile'],
      whatsappLink: json['whatsapp_link'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'phone': phone,
      'mobile': mobile,
      'whatsapp_link': whatsappLink,
    };
  }

  @override
  String toString() {
    return 'CompanyDetail(phone: $phone, mobile: $mobile, whatsappLink: $whatsappLink)';
  }
}
