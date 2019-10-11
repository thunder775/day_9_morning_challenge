main() {
  List<int> x = [1, 1, 2, 2, 4, 4, 3, 3];
  uniqueSort(x);
  List<List<int>> y = [
    [1, 1, 2],
    [1, 4, 2]
  ];
  sumOfEven(y);
  String z = 'badce';
  
  unmix(z);
}

void uniqueSort(List x) {
  x = x.toSet().toList();
  x.sort();
  print(x);
}
// Challenge 1 - Purge and Organize
// Given a list of numbers, write a function that returns an list that...
// 1. Has all duplicate elements removed .
// 2. Is sorted from least to greatest value.
// Examples
// uniqueSort([1, 2, 4, 3]) ➞ [1, 2, 3, 4]
// uniqueSort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]) ➞ [1, 2, 3, 4]
// uniqueSort([6, 7, 3, 2, 1]) ➞ [1, 2, 3, 6, 7]

void sumOfEven(List<List<int>> x) {
  int sum = 0;
  for (List<int> m in x) {
    for (int a in m) {
      if (a % 2 == 0) sum += a;
    }
  }
  print(sum);
}

// Challenge 2 - Sum of all Even Numbers in a Matrix
// Create a function that returns the sum of all even elements in a 2D matrix.
// Examples
// sumOfEvens([
//   [1, 0, 2],
//   [5, 5, 7],
//   [9, 4, 3]
// ]) ➞ 6
//
// 2 + 4 = 6
//
// sumOfEvens([
//   [1, 1],
//   [1, 1]
// ]) ➞ 0
//
// sumOfEvens([
//   [42, 9],
//   [16, 8]
// ]) ➞ 66
//
// sumOfEvens([
//   [],
//   [],
//   []
// ]) ➞ 0
void unmix(String str) {
  String result='';
  for (int i = 0; i < (str.length -1); i += 2) {
    String temp1, temp2;
    temp1 = str[i];
    temp2 = str[i + 1];
    result = result + temp2 + temp1;
  }
  if(str.length%2!=0){
    result+=str[str.length-1];
  }
  print(result);
}
// Challenge 3 - Unmix My Strings
// 'lPaeesh le pemu mnxit ehess rtnisg!' Oh, sorry, that was supposed to say: Please help me unmix these strings!
// Somehow my strings have all become mixed up; every pair of characters has been swapped.
// Help me undo this so I can understand my strings again.
// Example:
// unmix("123456") ➞ "214365"
//
// unmix("hTsii  s aimex dpus rtni.g") ➞ "This is a mixed up string."
//
// unmix("badce") ➞ "abcde"
