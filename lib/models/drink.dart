// To parse this JSON data, do
//
//     final drink = drinkFromJson(jsonString);

import 'dart:convert';

Drink drinkFromJson(String str) => Drink.fromJson(json.decode(str));

String drinkToJson(Drink data) => json.encode(data.toJson());

class Drink {
    List<DrinkElement> drinks;

    Drink({
        this.drinks,
    });

    factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        drinks: List<DrinkElement>.from(json["drinks"].map((x) => DrinkElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
    };
}

class DrinkElement {
    String idDrink;
    String strDrink;
    dynamic strDrinkAlternate;
    dynamic strDrinkEs;
    dynamic strDrinkDe;
    dynamic strDrinkFr;
    dynamic strDrinkZhHans;
    dynamic strDrinkZhHant;
    dynamic strTags;
    dynamic strVideo;
    String strCategory;
    dynamic strIba;
    String strAlcoholic;
    String strGlass;
    String strInstructions;
    String strDrinkThumb;
    String strIngredient1;
    String strIngredient2;
    String strIngredient3;
    String strIngredient4;
    dynamic strIngredient5;
    dynamic strIngredient6;
    dynamic strIngredient7;
    dynamic strIngredient8;
    dynamic strIngredient9;
    dynamic strIngredient10;
    dynamic strIngredient11;
    dynamic strIngredient12;
    dynamic strIngredient13;
    dynamic strIngredient14;
    dynamic strIngredient15;
    String strMeasure1;
    String strMeasure2;
    String strMeasure3;
    String strMeasure4;
    dynamic strMeasure5;
    dynamic strMeasure6;
    dynamic strMeasure7;
    dynamic strMeasure8;
    dynamic strMeasure9;
    dynamic strMeasure10;
    dynamic strMeasure11;
    dynamic strMeasure12;
    dynamic strMeasure13;
    dynamic strMeasure14;
    dynamic strMeasure15;
    String strCreativeCommonsConfirmed;
    DateTime dateModified;

    DrinkElement({
        this.idDrink,
        this.strDrink,
        this.strDrinkAlternate,
        this.strDrinkEs,
        this.strDrinkDe,
        this.strDrinkFr,
        this.strDrinkZhHans,
        this.strDrinkZhHant,
        this.strTags,
        this.strVideo,
        this.strCategory,
        this.strIba,
        this.strAlcoholic,
        this.strGlass,
        this.strInstructions,
        this.strDrinkThumb,
        this.strIngredient1,
        this.strIngredient2,
        this.strIngredient3,
        this.strIngredient4,
        this.strIngredient5,
        this.strIngredient6,
        this.strIngredient7,
        this.strIngredient8,
        this.strIngredient9,
        this.strIngredient10,
        this.strIngredient11,
        this.strIngredient12,
        this.strIngredient13,
        this.strIngredient14,
        this.strIngredient15,
        this.strMeasure1,
        this.strMeasure2,
        this.strMeasure3,
        this.strMeasure4,
        this.strMeasure5,
        this.strMeasure6,
        this.strMeasure7,
        this.strMeasure8,
        this.strMeasure9,
        this.strMeasure10,
        this.strMeasure11,
        this.strMeasure12,
        this.strMeasure13,
        this.strMeasure14,
        this.strMeasure15,
        this.strCreativeCommonsConfirmed,
        this.dateModified,
    });

    factory DrinkElement.fromJson(Map<String, dynamic> json) => DrinkElement(
        idDrink: json["idDrink"],
        strDrink: json["strDrink"],
        strDrinkAlternate: json["strDrinkAlternate"],
        strDrinkEs: json["strDrinkES"],
        strDrinkDe: json["strDrinkDE"],
        strDrinkFr: json["strDrinkFR"],
        strDrinkZhHans: json["strDrinkZH-HANS"],
        strDrinkZhHant: json["strDrinkZH-HANT"],
        strTags: json["strTags"],
        strVideo: json["strVideo"],
        strCategory: json["strCategory"],
        strIba: json["strIBA"],
        strAlcoholic: json["strAlcoholic"],
        strGlass: json["strGlass"],
        strInstructions: json["strInstructions"],
        strDrinkThumb: json["strDrinkThumb"],
        strIngredient1: json["strIngredient1"],
        strIngredient2: json["strIngredient2"],
        strIngredient3: json["strIngredient3"],
        strIngredient4: json["strIngredient4"],
        strIngredient5: json["strIngredient5"],
        strIngredient6: json["strIngredient6"],
        strIngredient7: json["strIngredient7"],
        strIngredient8: json["strIngredient8"],
        strIngredient9: json["strIngredient9"],
        strIngredient10: json["strIngredient10"],
        strIngredient11: json["strIngredient11"],
        strIngredient12: json["strIngredient12"],
        strIngredient13: json["strIngredient13"],
        strIngredient14: json["strIngredient14"],
        strIngredient15: json["strIngredient15"],
        strMeasure1: json["strMeasure1"],
        strMeasure2: json["strMeasure2"],
        strMeasure3: json["strMeasure3"],
        strMeasure4: json["strMeasure4"],
        strMeasure5: json["strMeasure5"],
        strMeasure6: json["strMeasure6"],
        strMeasure7: json["strMeasure7"],
        strMeasure8: json["strMeasure8"],
        strMeasure9: json["strMeasure9"],
        strMeasure10: json["strMeasure10"],
        strMeasure11: json["strMeasure11"],
        strMeasure12: json["strMeasure12"],
        strMeasure13: json["strMeasure13"],
        strMeasure14: json["strMeasure14"],
        strMeasure15: json["strMeasure15"],
        strCreativeCommonsConfirmed: json["strCreativeCommonsConfirmed"],
        dateModified: DateTime.parse(json["dateModified"]),
    );

    Map<String, dynamic> toJson() => {
        "idDrink": idDrink,
        "strDrink": strDrink,
        "strDrinkAlternate": strDrinkAlternate,
        "strDrinkES": strDrinkEs,
        "strDrinkDE": strDrinkDe,
        "strDrinkFR": strDrinkFr,
        "strDrinkZH-HANS": strDrinkZhHans,
        "strDrinkZH-HANT": strDrinkZhHant,
        "strTags": strTags,
        "strVideo": strVideo,
        "strCategory": strCategory,
        "strIBA": strIba,
        "strAlcoholic": strAlcoholic,
        "strGlass": strGlass,
        "strInstructions": strInstructions,
        "strDrinkThumb": strDrinkThumb,
        "strIngredient1": strIngredient1,
        "strIngredient2": strIngredient2,
        "strIngredient3": strIngredient3,
        "strIngredient4": strIngredient4,
        "strIngredient5": strIngredient5,
        "strIngredient6": strIngredient6,
        "strIngredient7": strIngredient7,
        "strIngredient8": strIngredient8,
        "strIngredient9": strIngredient9,
        "strIngredient10": strIngredient10,
        "strIngredient11": strIngredient11,
        "strIngredient12": strIngredient12,
        "strIngredient13": strIngredient13,
        "strIngredient14": strIngredient14,
        "strIngredient15": strIngredient15,
        "strMeasure1": strMeasure1,
        "strMeasure2": strMeasure2,
        "strMeasure3": strMeasure3,
        "strMeasure4": strMeasure4,
        "strMeasure5": strMeasure5,
        "strMeasure6": strMeasure6,
        "strMeasure7": strMeasure7,
        "strMeasure8": strMeasure8,
        "strMeasure9": strMeasure9,
        "strMeasure10": strMeasure10,
        "strMeasure11": strMeasure11,
        "strMeasure12": strMeasure12,
        "strMeasure13": strMeasure13,
        "strMeasure14": strMeasure14,
        "strMeasure15": strMeasure15,
        "strCreativeCommonsConfirmed": strCreativeCommonsConfirmed,
        "dateModified": dateModified.toIso8601String(),
    };
}
