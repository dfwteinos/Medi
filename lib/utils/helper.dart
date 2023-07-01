import 'package:flutter/material.dart';

class Helper {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static String getAssetName(String fileName, String type) {
    return "assets/images/$type/$fileName";
  }

  static TextTheme getTheme(BuildContext context) {
    return Theme.of(context).textTheme;
  }

  static List<dynamic> getCategoryItems(String category) {
    switch (category.toLowerCase()) {
      case "νοσοκομεία":
        return [
          {
            "name": "Λαϊκό Νοσοκομείο",
            "rating": "3.3",
            "shop": "Μέσος χρόνος αναμονής 30'",
            "image": Image.asset(
              Helper.getAssetName("laiko.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Νοσοκομεία",
          },
          {
            "name": "Ιπποκράτειο Γενικό Νοσοκομείο",
            "rating": "3.6",
            "shop": "Cakes by Tella",
            "image": Image.asset(
              Helper.getAssetName("ippokrateio.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "«Άγιος Σάββας» Γενικό Αντικαρκινικό",
            "rating": "3.9",
            "shop": "Cafe Racer",
            "image": Image.asset(
              Helper.getAssetName("agios_savvas.jpeg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Ευαγγελισμός Γενικό Νοσοκομείο",
            "rating": "3.2",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("eyaggelismos.jpeg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "401 Γενικό Στρατιωτικό Νοσοκομείο Αθηνών",
            "rating": "3.7",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("401.jpeg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          }
        ];
      case "φαρμακεία":
        return [
          {
            "name": "Γκότσης Γεώργιος",
            "rating": "4.9",
            "shop": "Μέσος χρόνος αναμονής 30'",
            "image": Image.asset(
              Helper.getAssetName("apple_pie.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Νοσοκομεία",
          },
          {
            "name": "Ασπασία Κελλάρη",
            "rating": "2.0",
            "shop": "Cafe Racer",
            "image": Image.asset(
              Helper.getAssetName("dessert4.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Αλεκα Αποστολοπούλου ΣΙΑ ΟΕ",
            "rating": "4.6",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Αναστασία Καραμπάτσου",
            "rating": "2.9",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          }
        ];
      case "ιδιωτικές κλινικές":
        return [
          {
            "name": "City Clinique Γενική Κλινική",
            "rating": "4.1",
            "shop": "Cafe Racer",
            "image": Image.asset(
              Helper.getAssetName("dessert4.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Aristoteleion Ltd",
            "rating": "3.2",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "ΕΥΡΩΚΛΙΝΙΚΗ ΠΟΛΥΙΑΤΡΕΙΟ",
            "rating": "3.5",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          }
        ];

      default:
        return [];
    }
  }

  static List<dynamic> get(String category) {
    switch (category.toLowerCase()) {
      case "νοσοκομεία":
        return [
          {
            "name": "Λαϊκό Νοσοκομείο",
            "rating": "3.3",
            "shop": "Μέσος χρόνος αναμονής 30'",
            "image": Image.asset(
              Helper.getAssetName("laiko.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Νοσοκομεία",
          },
          {
            "name": "Ιπποκράτειο Γενικό Νοσοκομείο",
            "rating": "3.6",
            "shop": "Cakes by Tella",
            "image": Image.asset(
              Helper.getAssetName("ippokrateio.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "«Άγιος Σάββας» Γενικό Αντικαρκινικό",
            "rating": "3.9",
            "shop": "Cafe Racer",
            "image": Image.asset(
              Helper.getAssetName("agios_savvas.jpeg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Ευαγγελισμός Γενικό Νοσοκομείο",
            "rating": "3.2",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("euaggelismos.jpeg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "401 Γενικό Στρατιωτικό Νοσοκομείο Αθηνών",
            "rating": "3.7",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("410.jpeg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          }
        ];
      case "φαρμακεία":
        return [
          {
            "name": "Γκότσης Γεώργιος",
            "rating": "4.9",
            "shop": "Μέσος χρόνος αναμονής 30'",
            "image": Image.asset(
              Helper.getAssetName("apple_pie.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Νοσοκομεία",
          },
          {
            "name": "Ασπασία Κελλάρη",
            "rating": "2.0",
            "shop": "Cafe Racer",
            "image": Image.asset(
              Helper.getAssetName("dessert4.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Αλεκα Αποστολοπούλου ΣΙΑ ΟΕ",
            "rating": "4.6",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Αναστασία Καραμπάτσου",
            "rating": "2.9",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          }
        ];
      case "ιδιωτικές κλινικές":
        return [
          {
            "name": "City Clinique Γενική Κλινική",
            "rating": "4.1",
            "shop": "Cafe Racer",
            "image": Image.asset(
              Helper.getAssetName("dessert4.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "Aristoteleion Ltd",
            "rating": "3.2",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          },
          {
            "name": "ΕΥΡΩΚΛΙΝΙΚΗ ΠΟΛΥΙΑΤΡΕΙΟ",
            "rating": "3.5",
            "shop": "Minute by tuk tuk",
            "image": Image.asset(
              Helper.getAssetName("dessert5.jpg", "real"),
              fit: BoxFit.cover,
            ),
            "category": "Dessert",
          }
        ];

      default:
        return [];
    }
  }
}
