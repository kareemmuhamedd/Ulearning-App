abstract class HomeScreenEvent {
  const HomeScreenEvent();
}

class HomeScreenDots extends HomeScreenEvent {
  final int index;

  const HomeScreenDots(this.index);
}