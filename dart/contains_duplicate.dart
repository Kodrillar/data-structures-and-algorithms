void main(List<String> args) {
  """
  Returns true if input(list) has a duplicate  otherwise, false;
  const list1 = [2, 3, 6, 2]  true
  const list2 = [1, 4, 5, 2]   false 

 """;

  const arrayInput = [9, 5, 6, 9];
  const falseArrayInput = [4, 7, 2, 1];

  bool containsDuplicate = checkDuplicate2(arrayInput);
  print(containsDuplicate);
}

//Naive solution

bool checkDuplicate(List input) {
  """
    Where;
        i = list index in first loop;
        j = list index in second loop;
  """;

  for (var i = 0; i < input.length; i++) {
    for (var j = 0; j < input.length; j++) {
      if (i != j && input[i] == input[j]) {
        return true;
      }
    }
  }
  return false;
}

// improved Solution
bool checkDuplicate2(List input) {
  var set = Set();

  for (var element in input) {
    if (set.contains(element)) {
      return true;
    }
    set.add(element);
  }

  return false;
}
