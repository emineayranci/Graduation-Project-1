import 'dart:ui';

class Yapilacaklar {
  final String yapilacak;
  final String aciklama;
  final Color startColor;
  final Color endColor;
  final String image;
  final DateTime tarih;
  bool yapildiMi;

  Yapilacaklar(this.yapilacak, this.aciklama, this.tarih, this.startColor,
      this.endColor, this.image, this.yapildiMi);
}

var items = [
  Yapilacaklar(
    "Kitap oku",
    "Sefiller",
    DateTime(2021, 1, 3, 23, 12,12),
    Color(0xfff8ac6e),
    Color(0xfff8ac6e),
    "assets/icon-defter.png",
    true,
  ),
  Yapilacaklar(
    "Arkadaşına hediye al",
    "Çağla'ya",
    DateTime(2021, 2, 14),
    Color(0xff6fbf7b),
    Color(0xff6fbf7b),
    "assets/gift-icon.png",
    false,
  ),
  Yapilacaklar(
    "Piyano çal",
    "",
    DateTime(2021, 1, 3),
    Color(0xffff9380),
    Color(0xffff9380),
    "assets/piano.png",
    false,
  ),
  Yapilacaklar(
    "Dişini fırçala",
    "her gün",
    DateTime(2021, 1, 1),
    Color(0xff5ac3ff),
    Color(0xff5ac3ff),
    "assets/dis.png",
    true,
  ),

];
