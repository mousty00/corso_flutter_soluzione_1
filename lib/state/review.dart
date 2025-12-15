import "package:color_changer/api/models/character_api_model.dart";
import "package:color_changer/models/character_review_model.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";

part "review.g.dart";

@riverpod
class Review extends _$Review {
  @override
  List<CharacterReviewModel> build() {
    return [];
  }

  void addReview(Character character, Map<String, Object?> formValue) {
    final review = CharacterReviewModel(
      character: character,
      rating: formValue["rating"]! as int,
      comment: formValue["comment"]! as String,
    );

    final index = state.indexOf(review);

    if (index == -1) {
      state.add(review);
      print("${character.name}'s review added!");
      ref.notifyListeners();
    }
  }

  void removeReviews(CharacterReviewModel review) {
    state.remove(review);
    ref.notifyListeners();
  }

  void clearReviews() {
    state.clear();
    ref.notifyListeners();
  }
}
