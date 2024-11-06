# Entendendo a estrutura de uma media query

```
@media not print and (min-width: 768px) {
  body {
      background-color: #FF0000;
  }
}
```

@media define o atributo media type, que fala ao CSS qual tipo de dispositivo iremos utilizar. Os principais tipos de dispositivo são os seguintes:

* All: Se refere a todos os tipos de dispositivos.
* Print: Se refere aos dispositivos de impressão.
* Screen: Se refere a monitores ou dispositivos com telas coloridas e resolução adequada.
* Speech: Se refere a sintetizadores de voz ou leitores de tela.

Podemos definir antes do tipo operadores para restringir a regra:

* and: É utilizado em todas as Media Queries, tendo como função primária ser o elo entre o Media Type e a Media Feature. É também responsável pelas expressões múltiplas, isto é, quando usamos mais de uma Media Feature para compor a expressão.
* not: É utilizado quando se deseja que o resultado de uma determinada expressão seja o oposto ao real.
* only: É utilizado quando se deseja prevenir que navegadores antigos que não suportam Media Features tentem processar a expressão.
* “,“: É utilizado para juntar duas ou mais expressões diferentes que deverão executar um mesmo conjunto de regras. Funciona como um “ou” condicional na lógica de programação.