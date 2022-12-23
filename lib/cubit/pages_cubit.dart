import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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

class BackgroundImageCafeProfileCubit extends Cubit<int> {
  BackgroundImageCafeProfileCubit() : super((0));
  void setBackgroundImage(int newBackgroundImage) {
    emit(newBackgroundImage);
  }
}
