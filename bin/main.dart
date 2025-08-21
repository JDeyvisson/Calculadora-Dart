
import 'dart:io';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> arguments) {
 
  while(true){
    
  print("Digite a expressão");
  try{
      Expression expressao = Parser().parse(stdin.readLineSync()!);
      double resultado = expressao.evaluate(EvaluationType.REAL, ContextModel());
      if(resultado.isInfinite){
        print("Não é possivel dividir por 0");
      }else{
        print("Resultado: $resultado");
      }
  }catch (e) {
      print("Expressão inválida: $e");
  }
  }

}