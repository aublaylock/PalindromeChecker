public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String simple = simplified(word);
  return reverse(simple).equals(simple);
}
public String reverse(String str)
{ 
  String newStr = "";
  for(int i = str.length()-1; i>=0; i--){
    newStr+=Character.toString(str.charAt(i));
  }
  return newStr;
}
public String simplified(String str){
  String simplifiedStr = str.toLowerCase().replaceAll(" ","");
  String done = "";
  for(int i=0;i<simplifiedStr.length();i++){
    if(Character.isLetter(simplifiedStr.charAt(i)))
      done += simplifiedStr.charAt(i);
  }
  return done;
}

