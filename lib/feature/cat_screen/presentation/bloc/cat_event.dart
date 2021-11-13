abstract class CatEvent {}

class GetCatEvent extends CatEvent {
  int page;
  int pageLimit;

  GetCatEvent({this.page=0, this.pageLimit=0});
}
