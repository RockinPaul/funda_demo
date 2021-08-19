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
  final List<FeedObject> objects;

  const FeedLoadSuccess({required this.objects});

  @override
  List<Object?> get props => [objects];
}

class FeedLoadFailure extends FeedState {
  final String message;

  const FeedLoadFailure({required this.message});

  @override
  List<Object?> get props => [message];
}
