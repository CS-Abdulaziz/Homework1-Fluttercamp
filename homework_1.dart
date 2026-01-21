void main(){

  print("-" * 100); 
  print('The output of the 1st question is:');
  print(swapNumber(1));
  print("-" * 100);

  print('The output of the 2nd question is:');
  print(checkLetters("The quick brown fox jumps over three meter and betterthan a lazy dog")); // Q2
  print("-" * 100);

  print('The output of the 3rd question is:');
  countLetters("mississippi"); // Q3
  print("-" * 100);

  print('The output of the 4th question is:');
  countLettersList("successful"); // Q4
  print("-" * 100);

}

int swapNumber(int number){
  return 1 - number;
}

bool checkLetters(String text){

  Set<String> set = {};

  for(int i = 0; i < text.length; i++){
    if (text[i].codeUnitAt(0) >= "a".codeUnitAt(0) && text[i].codeUnitAt(0) <= "z".codeUnitAt(0)) {
      set.add(text[i]);
    }
  }

  return set.length == 26;
}

void countLetters(String str){

  Map<String, int> mapLetter = {};

  for(int i = 0; i < str.length; i++){

    if (!mapLetter.containsKey(str[i])) {
      mapLetter[str[i]] = 1;
    }else{
      mapLetter[str[i]] = mapLetter[str[i]]! + 1;
    }
  }

  print(mapLetter);
}

void countLettersList(String str){

  List<int> list = List.filled(26, 0);
  str = str.toLowerCase();
   
  for (var i = 0; i < str.length; i++) {

    int code = str[i].codeUnitAt(0);

    if (code >= 97 && code <= 122) {
      list[code - 97]++;
    }
  }

  for (int i = 0; i < 26; i++) {
    if (list[i] > 0) {
      print('${String.fromCharCode(i + 97)}: ${list[i]}');
    }
  }
}

