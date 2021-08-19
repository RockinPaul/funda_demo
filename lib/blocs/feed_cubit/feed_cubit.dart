import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:funda_demo/infrastructure/repositories/funda_object_repository.dart';
import 'package:funda_demo/domain/models/feed_object.dart';
import 'package:funda_demo/domain/repositories/funda_object_repository_base.dart';

part 'feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  late final FundaObjectRepositoryBase _repository;

  FeedCubit({FundaObjectRepositoryBase? repository})
      : super(FeedInitial()) {
    _repository = repository ?? FundaObjectRepository();
  }

  void fetch() {
    _repository.fetchFeed();
  }
}
