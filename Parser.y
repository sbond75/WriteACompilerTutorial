{
module Parser where

import Lexer
}

%name happyParser
%tokentype { Token }

%token
        'int' {TokenInt}
        'main' {TokenMain}
        '(' {TokenOP}
        ')' {TokenCP}
        '{' {TokenOB}
        '}' {TokenCB}
        'return' {TokenRet}
        '2' {Token2}
        ';' {TokenSemic}
        digits {TokenLit $$}
        alphas {TokenIdent $$}
        ident {Var $$}

%%

Program : FunctionDecl { ASTProgram $1 }
FunctionDecl : 'int' ident '(' ')' '{' Statement '}' { ASTFunctionDef $2 (ASTStatement $6) }
Statement : 'return' Expr ';' { ASTStatement $2 }
Expr : digits { ASTExpr $1 }

{

data Term = ASTProgram Term {- <--ASTFunctionDef -}
          | ASTFunctionDef String Term {- <-- ASTStatement -}
          | ASTStatement Term {- <-- ASTExpr -}
          | ASTExpr Int {- <-- Int -}
          deriving Show

happyError = error "parse error"
failUnless b msg = if b then () else error msg 

}
