// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Review)
const reviewProvider = ReviewProvider._();

final class ReviewProvider
    extends $NotifierProvider<Review, List<CharacterReviewModel>> {
  const ReviewProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewHash();

  @$internal
  @override
  Review create() => Review();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<CharacterReviewModel> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<CharacterReviewModel>>(value),
    );
  }
}

String _$reviewHash() => r'5ba76d6e3cfe339615866ab3cd480549540bee07';

abstract class _$Review extends $Notifier<List<CharacterReviewModel>> {
  List<CharacterReviewModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<List<CharacterReviewModel>, List<CharacterReviewModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                List<CharacterReviewModel>,
                List<CharacterReviewModel>
              >,
              List<CharacterReviewModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
