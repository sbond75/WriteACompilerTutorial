{
{-# OPTIONS_GHC -w #-}

module Lexer where

}

%wrapper "basic"
$digit = 0-9
$alpha = [a-zA-Z]
-- $ident = [ $alpha \_ ] [ $alpha $digit \_ ]*

tokens :-
-- Ignore whitespace?
  $white+ ;
-- Comments
  "//".* ;
  int { \s -> TokenInt }
  main {\s -> TokenMain}
  "("             { \s -> TokenOP }
  ")"             { \s -> TokenCP }
  "{"             { \s -> TokenOB }
  "}"             { \s -> TokenCB }
  return        { \s -> TokenRet }
  "2"             { \s -> Token2 }
  ";"  { \s -> TokenSemic } 
  $digit+ { \s -> TokenLit (read s) }
  $alpha+ { \s -> TokenIdent s }
--  [\=\+\-\*\/\(\)]+      { \s -> Sym s }
  $alpha [$alpha $digit \_ \']*{ \s -> Var s }

{
data Token = TokenInt 
           | TokenMain
           | TokenOP | TokenCP | TokenOB | TokenCB
           | TokenRet
           | Token2
           | TokenSemic
           | TokenLit Int
           | TokenIdent String
           | Sym String
           | Var String
           deriving (Eq, Show)
}
