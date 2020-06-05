all: flx

flx_cmp: 	
	flex lexer.l
	gcc -o lexer lex.yy.c -lfl

flx: flx_cmp
	./lexer < input.ms

clean:
	rm -f *.o flx_cmp
