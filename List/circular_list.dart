class CircularList<E> {
  List<E> _elements = [];

  void add(E item) {
    _elements.add(item);
  }

  List<E> get e => [..._elements];

  static CircularList<T> fromValues<T>(List<T> values) {
    CircularList<T> newCircularList = CircularList<T>();
    newCircularList._elements = values;
    return newCircularList;
  }

  E after(E actual) {
    int index = _elements.indexOf(actual);
    index++;
    if (index >= _elements.length) {
      index = 0;
    }

    return _elements[index];
  }

  E before(E actual) {
    int index = _elements.indexOf(actual);
    index--;
    if (index < 0) {
      index = _elements.length - 1;
    }

    return _elements[index];
  }
}

void main(List<String> args) {
  List<int> num = [1, 2];
  CircularList<int> firstList = CircularList<int>();
  firstList.add(1);
  firstList.add(2);
  print(firstList.before(1));

  var secondList = CircularList.fromValues<int>(num);
  print(secondList._elements);
}
