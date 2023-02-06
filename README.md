# Extract a SubString from a String - Delphi7
Code in Delphi 7 to copy a part of a String from an informed character to another informed character. Being able to skip a number of occurrences of these characters.

```diff
  @@ Exemplos: @@

  1- {
    MainString -> ( NAME='TESTE'; )
    Caractere inicial -> ( = )
    Caractere final -> ( ; )
    Resultado -> ( 'TESTE' )
  }

  2- {
    MainString -> ( SENSATO )
    Caractere inicial -> ( S )
    Caractere final -> ( O )
    Resultado -> ( 'ENSAT' )

    Pular Caractere inicial -> ( 1 )
    Resultado -> ( 'AT' )
  } 

  3- {
    MainString -> ( GOOGLE TRADUTOR )
    Caractere inicial -> ( G )
    Caractere final -> ( T )
    Resultado -> ( 'OOGLE ' )

    Pular Caractere inicial -> ( 1 )
    Pular Caractere final -> ( 1 )
    Resultado -> ( 'LE TRADU' )
  } 
```
