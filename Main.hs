import Parser

main = happyParser (alexScanTokens "int main() { return 2; }")
