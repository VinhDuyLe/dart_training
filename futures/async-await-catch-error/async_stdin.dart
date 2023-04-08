import 'dart:io'; 
void main(List<String> args) {
   print("Enter your name :");            
   
   // prompt for user input 
   String? name = stdin.readLineSync();  
   
   // this is a synchronous method that reads user input 
   print("Hello Mr. ${name}"); 
   print("End"); 
  
}