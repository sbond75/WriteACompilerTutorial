import Calc

runCalc :: String -> Exp
runCalc = calc . lexer

main = case runCalc "1 + 2 + 3" of {
	(Exp1 (Plus (Plus (Term (Factor (Int 1))) (Factor (Int 2))) (Factor (Int 3))))  ->
 	case runCalc "1 * 2 + 3" of {
	(Exp1 (Plus (Term (Times (Factor (Int 1)) (Int 2))) (Factor (Int 3)))) ->
	case runCalc "1 + 2 * 3" of {
	(Exp1 (Plus (Term (Factor (Int 1))) (Times (Factor (Int 2)) (Int 3)))) ->
	case runCalc "let x = 2 in x * (x - 2)" of {
	(Let "x" (Exp1 (Term (Factor (Int 2)))) (Exp1 (Term (Times (Factor (Var "x")) (Brack (Exp1 (Minus (Term (Factor (Var "x"))) (Factor (Int 2))))))))) -> print "AndysTest works\n" ; 
	_ -> quit } ; _ -> quit } ; _ -> quit } ; _ -> quit }
quit = print "runCalc failed\n"
