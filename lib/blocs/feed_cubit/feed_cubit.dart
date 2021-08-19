import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:funda_demo/domain/models/feed.dart';
import 'package:funda_demo/infrastructure/repositories/repository.dart';
import 'package:funda_demo/domain/repositories/repository_base.dart';

part 'feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  late final RepositoryBase _repository;

  FeedCubit({RepositoryBase? repository})
      : super(FeedInitial()) {
    _repository = repository ?? Repository();
  }

  Future<void> fetch() async {
    try {
      emit(FeedLoadInProgress());
      final feed = await _repository.fetchFeed();
      emit(FeedLoadSuccess(feed: feed));
    } catch (e) {
      emit(FeedLoadFailure(message: 'Feed loading failed!'));
    }
  }
}
