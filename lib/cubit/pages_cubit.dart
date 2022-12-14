import 'package:bloc/bloc.dart';

class PagesCubit extends Cubit<int> {
  PagesCubit() : super((0));
  void setPage(int NewPage) {
    emit(NewPage);
  }
}

class ContentCubit extends Cubit<int> {
  ContentCubit() : super((0));
  void setContent(int NewContent) {
    emit(NewContent);
  }
}

class MenuTagCubit extends Cubit<int> {
  MenuTagCubit() : super((0));
  void setMenuTag(int NewMenuTag) {
    emit(NewMenuTag);
  }
}
