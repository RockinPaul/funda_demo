part of 'feed_cubit.dart';

abstract class FeedState extends Equatable {
  const FeedState();
}

class FeedInitial extends FeedState {
  @override
  List<Object> get props => [];
}

class FeedLoadInProgress extends FeedState {
  const FeedLoadInProgress();

  @override
  List<Object> get props => [];
}

class FeedLoadSuccess extends FeedState {
  final Feed feed;

  const FeedLoadSuccess({required this.feed});

  @override
  List<Object?> get props => [feed];
}

class FeedLoadFailure extends FeedState {
  final String message;

  const FeedLoadFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
