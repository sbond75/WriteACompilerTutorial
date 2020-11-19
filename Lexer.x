{
{-# OPTIONS_GHC -w #-}

module Lexer (alexScanTokens) where

}

%wrapper "basic"
$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
  $white+ ;
  "--".* ;
  let { \s -> Let }
  in {\s -> In}
  $digit+ { \s -> Int (read s) }
  [\=\+\-\*\/\(\)]      { \s -> Sym (head s) }
  $alpha [$alpha $digit \_ \']*{ \s -> Var s }

{
data Token = Let | In | Sym Char | Var String | Int Int deriving (Eq, Show)
}
