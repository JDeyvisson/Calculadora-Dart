import 'dart:io';

class Calculadora {

  String? operacao;
  double? numeroUm;
  double? numeroDois;
  double? resultado;


  void run(){

   print("Escolha a operação (+, -, *, /)");
   operacao = stdin.readLineSync();
   if ( operacao !=null && ["+", "-", "*", "/"].contains(operacao) ) {
      numero1();
   }else{
      print("Digite uma operação correta");
      run();

   }
  }

  void numero1(){
   
   print("Digite o primeiro numero");
   numeroUm = double.tryParse(stdin.readLineSync()!);
   if(numeroUm != null){
      numero2();

   }else{
      print("Insira um numero valido");
      numero1();

   }
   
   
  }

  void numero2(){

   print("Digite o segundo numero");
   numeroDois = double.tryParse(stdin.readLineSync()!);
   if(numeroDois != null){
      calcular();
   }else{
      print("Digite um numero valido");
      numero2();
   }

   
  
  }

  void calcular(){

    switch (operacao) {
      case "+":
        resultado = soma(numeroUm!, numeroDois!);
        print("Resultado: $resultado");
        break;
      case "-":
        resultado = subtracao(numeroUm!, numeroDois!);
        print("Resultado: $resultado");
        break;
      case "/":
        resultado = divisao(numeroUm!, numeroDois!);
        print("Resultado: $resultado");
        break;
      case "*":
        resultado = multiplicacao(numeroUm!, numeroDois!); 
        print("Resultado: $resultado");
        break; 
      default: 
        print("Operação invalida");
        run();
    }

  }

  double soma(double num1,double num2) => num1+num2;
    
  double subtracao(double num1,double num2) => num1-num2;
  
  double? divisao(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print("Não é possível dividir por zero");
      return null;
    }
}

  double multiplicacao(double num1,double num2) => num1*num2;
  
}