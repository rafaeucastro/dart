mixin LinkedList {
  E previous<E>(E actual, List<E> list) {
    int index = list.indexOf(actual);
    index--;
    if (index < 0) {
      index = list.length - 1;
    }

    return list[index];
  }

  E next<E>(E actual, List<E> list) {
    int index = list.indexOf(actual);
    index++;
    if (index >= list.length) {
      index = 0;
    }

    return list[index];
  }
}
