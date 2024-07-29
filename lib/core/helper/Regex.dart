class AppRegex {
  static bool isemail(String email) {
    const emailRegex =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
        if(RegExp(emailRegex).hasMatch(email)){
          return true;
        }else{
          return false;
        }
  }
  static bool isPass(String pass){
    const passRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    if(RegExp(passRegex).hasMatch(pass)){ 
      return true;
    }else{
      return false;
    }
}
}
