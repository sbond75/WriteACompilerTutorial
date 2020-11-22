{
module Main where
}

%name calc
%tokentype { Token }
%error { parseError }

$letter = [a-zA-Z]
$nonletter = [~$letter\n]

$identifier = [a-zA-Z]
$integerLiteral = [0-9]+

%token 
      int             { TokenKeywordInt }
      main            { TokenMain }
      '('             { TokenOP }
      ')'             { TokenCP }
      '{'             { TokenOB }
      '}'             { TokenCB }
      return          { TokenRet }
      const           { TokenConst $$ }
      ';'             { TokenSemic }
      '+'             { TokenPlus }
      '-'             { TokenMinus }
      '*'             { TokenTimes }
      '/'             { TokenDiv }
      id          { TokenIdent }
      intLit  {TokenIntLit }

Prog : Function
Function : int $identifier '(' ')' '{' Statement '}'
Statement : return Exp ';'
Exp : $integerLitreal
