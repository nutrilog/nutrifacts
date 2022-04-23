extension StreamExtensionUtils<T> on Stream<T> {
  Stream<T> concat(Stream<T> stream) async* {
    yield* this;
    yield* stream;
  }
}
