import "package:color_changer/pages/cart_page.dart";
import "package:color_changer/pages/cat_page.dart";
import "package:color_changer/pages/color_changer_page.dart";
import "package:color_changer/pages/contact_page.dart";
import "package:color_changer/pages/home_page.dart";
import "package:color_changer/pages/jokes_page.dart";
import "package:color_changer/pages/login_page.dart";
import "package:color_changer/pages/products_page.dart";
import "package:color_changer/pages/recipe_list_page.dart";
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
      path: "/cat/:status",
      builder: (context, state) {
        return const CatPage(status: 404);
      },
    ),
  ],
);
