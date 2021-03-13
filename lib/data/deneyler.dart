import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperimentInfo {
  // Deneylerle ilgili olabilecek bilgiler burada tutuluyor.
  final int position;
  final String name;
  final String iconImage; // swiper kısmındaki deneylerin resimleri gelecek
  final String description;
  final List<String> images;
  final Color color;

  ExperimentInfo(
      this.position, {
        this.name,
        this.iconImage,
        this.description,
        this.images,
        this.color,
      });
}

List<ExperimentInfo> exp = [
  ExperimentInfo(1,
    name: 'Soğan Zarı',
    iconImage: '', // TODO deneyi anlatan icon gelecek
    description: "Soğan zarı deneyinde bitki hücresinin yapısı öğrenilir. Bitki hücresinde bulunan zar, sitoplazma ve çekirdek kısımları gözlemlenerek hücre yapısı daha iyi anlaşılır.",
    images: [
      //TODO buraya konuyla ilgili ufak resimler getirilebilir
      '',
      '',
      '',
      ''
    ],
    color: Color(0xff5AC3FF),
  ),
  ExperimentInfo(2,
    name: 'Fiziksel Değişim',
    iconImage: '', // TODO deneyi anlatan icon gelecek
    description: 'Cisimlerin çeşitli eylemler sonucu görünüşlerinin değişmesini gözlemler. Fiziksel değişimin günlük hayattaki örneklerini keşfedilir',
    images: [
      //TODO buraya konuyla ilgili ufak resimler getirilebilir
      '',
      '',
      '',
      ''
    ],
    color: Color(0xffF8AC6E) ,
  ),
  ExperimentInfo(3,
    name: 'Yaprak Kesiti',
    iconImage: '', // TODO deneyi anlatan icon gelecek
    description: "BUraya deney ile ilgili kısa anlatım gelecek",
    images: [
      //TODO buraya konuyla ilgili ufak resimler getirilebilir
      '',
      '',
      '',
      ''
    ],
    color: Color(0xff6FBF7B),
  ),

  ExperimentInfo(4,
    name: 'Maya Mantarı',
    iconImage: '', // TODO deneyi anlatan icon gelecek
    description: "Mayalar,uygun sıcaklıktaki ortamda yeterli nem ve besin bulunduğunda çoğalan tek hücreli canlılardır.Deneyimizde şekerin maya mantarlarının üremesi üzerinde olan etkisi incelenir.",
    images: [
      //TODO buraya konuyla ilgili ufak resimler getirilebilir
      '',
      '',
      '',
      ''
    ],
    color: Color(0xffFFFF75),
  ), ExperimentInfo(5,
    name: 'Işığın Kırılması',
    iconImage: '', // TODO deneyi anlatan icon gelecek
    description: 'Bir kaynaktan çıkan ışığın nasıl kırıldığı ve bu kırılmanın özellikleri öğrenilir. Işığın farklı ortamlarda kırılma durumları incelenir',
    images: [
      //TODO buraya konuyla ilgili ufak resimler getirilebilir
      '',
      '',
      '',
      ''
    ],
    color: Color(0xffFF9380),
  ),
];
