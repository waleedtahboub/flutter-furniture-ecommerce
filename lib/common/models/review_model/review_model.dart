class ReviewModel {
  ReviewModel({
    required this.reviewerName,
    required this.date,
    required this.comment,
    this.rating = 0.0,
  });
  final String reviewerName;
  final DateTime date;
  final String comment;
  final double rating;

  ReviewModel copyWith({
    String? reviewerName,
    DateTime? date,
    String? comment,
    double? rating,
  }) {
    return ReviewModel(
      reviewerName: reviewerName ?? this.reviewerName,
      date: date ?? this.date,
      comment: comment ?? this.comment,
      rating: rating ?? this.rating,
    );
  }
}
