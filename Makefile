all: Parser.hs Lexer.hs

Parser.hs: Parser.y Lexer.hs
	happy Parser.y

Lexer.hs: Lexer.x
	alex Lexer.x

clean:
	rm -f Lexer.hs Parser.hs
