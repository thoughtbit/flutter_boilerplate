class AppState {
  final int count;
  final bool isLoading;
  final Map<String, dynamic> currentUser;

  AppState({
    this.count,
    this.isLoading,
    this.currentUser
  });

  factory AppState.loading() => new AppState(isLoading: true);

  @override
  String toString() {
    return '''AppState{
      isLoading: $isLoading, 
      count: $count, 
      currentUser: $currentUser
    }''';
  }
}