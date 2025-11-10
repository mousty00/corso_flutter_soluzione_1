import "package:color_changer/models/route.dart";

typedef RoutesTypeDef = Never;

extension ERoute on RoutesTypeDef {
  static List<CustomRoute> get routes {
    return <CustomRoute>[
      CustomRoute(path: "/todos", label: "to do list"),
      CustomRoute(path: "/login", label: "login"),
      CustomRoute(path: "/color-changer", label: "color changer"),
      CustomRoute(path: "/recipes", label: "recipe list"),
      CustomRoute(path: "/contacts", label: "contact list"),
    ];
  }
}
