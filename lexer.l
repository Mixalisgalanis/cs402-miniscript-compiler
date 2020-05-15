%{
  #include <stdio.h>
  int lineNum = 1;
%}

/********************* DEFINITIONS *************************/
/*Essential Types*/
DIGIT       [0-9]
SIGN        [+-]
DECIMAL     {DIGIT}+\.{DIGIT}+
INTEGER     {DIGIT}+
EXPONENTIAL [eE]?{SIGN}?({DIGIT}+)?

NUMERICAL_OPERATORS     \*\*|[+\-\*\/%]
RELATIONAL_OPERATORS    [=!<>]\=|>|<
LOGICAL_OPERATORS       and|or|not
ASSIGN_OPERATOR         =

/*Miniscript Official Types*/
KEYWORD         number|boolean|string|void|var|const|if|else|for|while|function|break|continue|return|null|start
IDENTIFIER      ([A-Z]|[a-z])[0-z]*
NUMBER          {SIGN}?({DECIMAL}|{INTEGER}){EXPONENTIAL}
/*number backup [+|-]?([0-9]+\.[0-9]+|[0-9]+)[eE]?[+|-]?([0-9]+)?*/
BOOLEAN         true|false
STRING          (\".*\")|(\'.*\')
/*string backup (\"[^\"\n]*\")|(\'[^\'\n]*\')*/
OPERATOR        {SIGN}|{NUMERICAL_OPERATORS}|{RELATIONAL_OPERATORS}|{LOGICAL_OPERATORS}|{ASSIGN_OPERATOR}
DELIMITER       [;\(\),\[\]\{\}:]
WHITE_SPACE     [ \t\r\n]
COMMENT         \/\*+[^\/]*\*\/
LINE_COMMENT    \/\/.*

/********************* RULES *************************/
%%
{BOOLEAN}        {printf("Token BOOLEAN: %s\n", yytext);}
{KEYWORD}        {printf("Token KEYWORD: %s\n", yytext);}
{IDENTIFIER}        {printf("Token IDENTIFIER: %s\n", yytext);}
{NUMBER}        {printf("Token NUMBER: %s\n", yytext);}
{STRING}        {printf("Token STRING: %s\n", yytext);}
{OPERATOR}        {printf("Token OPERATOR: %s\n", yytext);}
{DELIMITER}        {printf("Token DELIMITER: %s\n", yytext);}
{WHITE_SPACE}        {printf("Token WHITE_SPACE: %s\n", yytext);}
{COMMENT}        {printf("Token COMMENT: %s\n", yytext);}
{LINE_COMMENT}        {printf("Token LINE_COMMENT: %s\n", yytext);}


%%
/********************* USER CODE *************************/
int main() {
 yylex();
}