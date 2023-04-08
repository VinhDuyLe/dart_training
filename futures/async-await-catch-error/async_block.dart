import "dart:async"; 
import "dart:io";  

void main(List<String> args) {
   File file = new File( Directory.current.path+'/data/contact.txt'); 
   Future<String> f = file.readAsString();  
  
   // returns a futrue, this is Async method 
   f.then((data)=>print(data));  
   
   // once file is read , call back method is invoked  
   print('End');  
   // this get printed first, showing fileReading is non blocking or async 
}