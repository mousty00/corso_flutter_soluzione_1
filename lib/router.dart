import "package:color_changer/pages/cart_page.dart";
import "package:color_changer/pages/cat_page.dart";
import "package:color_changer/pages/cats_page.dart";
import "package:color_changer/pages/character_page.dart";
import "package:color_changer/pages/color_changer_page.dart";
import "package:color_changer/pages/contact_page.dart";
import "package:color_changer/pages/dogs_page.dart";
import "package:color_changer/pages/fbi_page.dart";
import "package:color_changer/pages/home_page.dart";
import "package:color_changer/pages/jokes_page.dart";
import "package:color_changer/pages/login_page.dart";
import "package:color_changer/pages/products_page.dart";
import "package:color_changer/pages/recipe_list_page.dart";
import "package:color_changer/pages/rick_morty_page.dart";
import "package:color_changer/pages/todo_list_page.dart";
import "package:go_router/go_router.dart";

final router = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: "/color-changer",
      builder: (context, state) {
        return const ColorChangePage();
      },
    ),
    GoRoute(
      path: "/todos",
      builder: (context, state) {
        return const TodoListPage();
      },
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: "/recipes",
      builder: (context, state) {
        return const RecipeListPage();
      },
    ),
    GoRoute(
      path: "/contacts",
      builder: (context, state) {
        return const ContactPage();
      },
    ),
    GoRoute(
      path: "/products",
      builder: (context, state) {
        return const ProductsPage();
      },
    ),
    GoRoute(
      path: "/cart",
      builder: (context, state) {
        return const CartPage();
      },
    ),
    GoRoute(
      path: "/jokes",
      builder: (context, state) {
        return const JokesPage();
      },
    ),
    GoRoute(
      path: "/cats",
      builder: (context, state) {
        return const CatsPage();
      },
    ),
    GoRoute(
      path: "/cats/:status",
      builder: (context, state) {
        return const CatPage(status: 404);
      },
    ),
    GoRoute(
      path: "/dogs",
      builder: (context, state) {
        return const DogsPage();
      },
    ),
    GoRoute(
      path: "/fbi",
      builder: (context, state) {
        return const FbiPage();
      },
    ),
    GoRoute(
      path: "/characters",
      builder: (context, state) {
        return const CharactersPage();
      },
    ),
    GoRoute(
      path: "/characters/:id",
      builder: (context, state) {
        final id = state.pathParameters["id"];
        return CharacterPage(id: int.parse(id!));
      },
    ),
  ],
);
