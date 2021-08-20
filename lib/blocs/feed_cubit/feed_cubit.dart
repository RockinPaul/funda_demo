import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';

part 'feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  final RepositoryBase repository;

  FeedCubit({required this.repository}) : super(FeedInitial());

  Future<void> fetch() async {
    try {
      emit(FeedLoadInProgress());
      final feed = await repository.fetchFeed();
      emit(FeedLoadSuccess(feed: feed));
    } catch (e) {
      emit(FeedLoadFailure(message: 'Feed loading failed!'));
    }
  }
}
