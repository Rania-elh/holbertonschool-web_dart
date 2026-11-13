String longestPalindrome(String s) {
  String longest = '';

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String current = s.substring(i, j);

      if (isPalindrome(current) && current.length > longest.length) {
        longest = current;
      }
    }
  }

  return longest.isEmpty ? 'none' : longest;
}

bool isPalindrome(String s) {
  return s == s.split('').reversed.join('');
}