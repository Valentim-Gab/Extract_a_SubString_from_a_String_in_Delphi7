# Extrair SubString de uma String - Delphi7
Código em Delphi7 para copiar uma parte de uma String a partir de um caractere informado até outro caractere informado. Podendo pularum número de ocorrências desses caracteres.

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
