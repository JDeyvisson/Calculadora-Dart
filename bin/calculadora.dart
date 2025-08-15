import 'dart:io';

class Calculadora {

  String? operacao;
  double? numeroUm;
  double? numeroDois;


  void run(){

   print("Escolha a operação (+, -, *, /)");
   operacao = stdin.readLineSync();
   numero1();

  }

  void numero1(){

   print("Digite o primeiro numero");
   numeroUm = double.parse(stdin.readLineSync()!);
   numero2();
   
  }

  void numero2(){

   print("Digite o segundo numero");
   numeroDois = double.parse(stdin.readLineSync()!);

   calcular();
  
  }

  void calcular(){

    switch (operacao) {
      case "+":
        soma(numeroUm, numeroDois);
        break;
      case "-":
        subtracao(numeroUm, numeroDois);
        break;
      case "/":
        divisao(numeroUm, numeroDois);
        break;
      case "*":
        multiplicacao(numeroUm, numeroDois); 
        break; 
      
      default: 
        print("Operação invalida");
        return;
    }

  }
   
  void soma(a, b){
    double resultado = a + b;
    print("Resultado: $resultado");
    
  }

  void subtracao(a, b){
   double resultado = a - b;
   print("Resultado: $resultado");
    
  }

  void divisao(a, b){
   double resultado = a / b;
   print("Resultado: $resultado");
    
  }

  void multiplicacao(a, b){
   double resultado = a * b;
   print("Resultado: $resultado");
    
  }
}