%{
  #include <stdio.h>
  int lineNum = 1;
%}

/********************* DEFINITIONS *************************/

NUMERICAL_OPERATORS     \*\*|[+\-\*\/%]
RELATIONAL_OPERATORS    [=!<>]\=|>|<
LOGICAL_OPERATORS       and|or|not
ASSIGN_OPERATOR         =

/****Miniscript Official Types****/

/* Keywords */
KEYWORD_NUMBER      number
KEYWORD_BOOLEAN     boolean
KEYWORD_STRING      string
KEYWORD_VOID        void
KEYWORD_TRUE        true
KEYWORD_FALSE       false
KEYWORD_VAR         var
KEYWORD_CONST       const
KEYWORD_IF          if
KEYWORD_ELSE        else
KEYWORD_FOR         for
KEYWORD_WHILE       while
KEYWORD_FUNCTION    function
KEYWORD_BREAK       break
KEYWORD_CONTINUE    continue
KEYWORD_NOT         not
KEYWORD_AND         and
KEYWORD_OR          or
KEYWORD_RETURN      return
KEYWORD_NULL        null
KEYWORD_START       start

/* Identifiers */
IDENTIFIER          ([A-Z]|[a-z])[0-z]*

/* Number Constants */
DIGIT               [0-9]
SIGN                [+-]
DECIMAL             {DIGIT}+\.{DIGIT}+
INTEGER             {DIGIT}+
EXPONENTIAL         [eE]?{SIGN}?({DIGIT}+)?

CONST_NUMBER        {SIGN}?({DECIMAL}|{INTEGER}){EXPONENTIAL}

/* Boolean Constants */
CONST_BOOLEAN       {KEYWORD_TRUE}|{KEYWORD_FALSE}

/* String Constants */
CONST_STRING        (\".*\")|(\'.*\')
    /*string backup (\"[^\"\n]*\")|(\'[^\'\n]*\')*/

/* Numerical Operators */
PLUS_OP             "+"
MINUS_OP            "-"
MULT_OP             "\*"
DIV_OP              "\/"
MOD_OP              "%"
POW_OP              "\*\*"

/* Relational Operators */
EQUAL_OP            "=="
NOT_EQUAL_OP        "!="
GREATHER_THAN_OP    ">"
GREATER_EQUAL_OP    ">="
LOWER_THAN_OP       "<"
LOWER_EQUAL_OP      "<="

/* Logical Operators */
AND_OP              and
OR_OP               or
NOT_OP              not

/* Sign Operators */
POSITIVE_SIGN_OP    "+"
NEGATIVE_SIGN_OP    "-"

/* Assign Operators */
ASSIGN_OP           "="

/*OPERATOR        {SIGN}|{NUMERICAL_OPERATORS}|{RELATIONAL_OPERATORS}|{LOGICAL_OPERATORS}|{ASSIGN_OPERATOR}*/

/* Delimiters */
SEMICOLON           ";"
LEFT_PARENTHESIS    "("
RIGHT_PARENTHESIS   ")"
COMMA               ","
LEFT_BRACKET        "["
RIGHT_BRACKET       "]"
LEFT_CURLY_BRACKET  "{"
RIGHT_CURLY_BRACKET "}"
COLON               ":"
/*DELIMITER       [;\(\),\[\]\{\}:]*/

/* White Space */
WHITE_SPACE     [ \t\r\n]

/* Comments */
COMMENT             \/\*+[^\/]*\*\/
LINE_COMMENT        \/\/.*


/********************* RULES *************************/
%%

{KEYWORD_NUMBER}        {printf("token %-20.20s %s\n", "KEYWORD_NUMBER:", yytext);}
{KEYWORD_BOOLEAN}       {printf("token %-20.20s %s\n", "KEYWORD_BOOLEAN:", yytext);}
{KEYWORD_STRING}        {printf("token %-20.20s %s\n", "KEYWORD_STRING:", yytext);}
{KEYWORD_VOID}          {printf("token %-20.20s %s\n", "KEYWORD_VOID:", yytext);}
{KEYWORD_TRUE}          {printf("token %-20.20s %s\n", "KEYWORD_TRUE:", yytext);}
{KEYWORD_FALSE}         {printf("token %-20.20s %s\n", "KEYWORD_FALSE:", yytext);}
{KEYWORD_VAR}           {printf("token %-20.20s %s\n", "KEYWORD_VAR:", yytext);}
{KEYWORD_CONST}         {printf("token %-20.20s %s\n", "KEYWORD_CONST:", yytext);}
{KEYWORD_IF}            {printf("token %-20.20s %s\n", "KEYWORD_IF:", yytext);}
{KEYWORD_ELSE}          {printf("token %-20.20s %s\n", "KEYWORD_ELSE:", yytext);}
{KEYWORD_FOR}           {printf("token %-20.20s %s\n", "KEYWORD_FOR:", yytext);}
{KEYWORD_WHILE}         {printf("token %-20.20s %s\n", "KEYWORD_WHILE:", yytext);}
{KEYWORD_FUNCTION}      {printf("token %-20.20s %s\n", "KEYWORD_FUNCTION:", yytext);}
{KEYWORD_BREAK}         {printf("token %-20.20s %s\n", "KEYWORD_BREAK:", yytext);}
{KEYWORD_CONTINUE}      {printf("token %-20.20s %s\n", "KEYWORD_CONTINUE:", yytext);}
{KEYWORD_NOT}           {printf("token %-20.20s %s\n", "KEYWORD_NOT:", yytext);}
{KEYWORD_AND}           {printf("token %-20.20s %s\n", "KEYWORD_AND:", yytext);}
{KEYWORD_OR}            {printf("token %-20.20s %s\n", "KEYWORD_OR:", yytext);}
{KEYWORD_RETURN}        {printf("token %-20.20s %s\n", "KEYWORD_RETURN:", yytext);}
{KEYWORD_NULL}          {printf("token %-20.20s %s\n", "KEYWORD_NULL:", yytext);}
{KEYWORD_START}         {printf("token %-20.20s %s\n", "KEYWORD_START:", yytext);}

{IDENTIFIER}            {printf("token %-20.20s %s\n", "IDENTIFIER:", yytext);}
{CONST_NUMBER}          {printf("token %-20.20s %s\n", "CONST_NUMBER:", yytext);}
{CONST_BOOLEAN}         {printf("token %-20.20s %s\n", "CONST_BOOLEAN:", yytext);}
{CONST_STRING}          {printf("token %-20.20s %s\n", "CONST_STRING:", yytext);}

{PLUS_OP}               {printf("token %-20.20s %s\n", "PLUS_OP:", yytext);}
{MINUS_OP}              {printf("token %-20.20s %s\n", "MINUS_OP:", yytext);}
{MULT_OP}               {printf("token %-20.20s %s\n", "MULT_OP:", yytext);}
{DIV_OP}                {printf("token %-20.20s %s\n", "DIV_OP:", yytext);}
{MOD_OP}                {printf("token %-20.20s %s\n", "MOD_OP:", yytext);}
{POW_OP}                {printf("token %-20.20s %s\n", "POW_OP:", yytext);}

{EQUAL_OP}              {printf("token %-20.20s %s\n", "EQUAL_OP:", yytext);}
{NOT_EQUAL_OP}          {printf("token %-20.20s %s\n", "NOT_EQUAL_OP:", yytext);}
{GREATHER_THAN_OP}      {printf("token %-20.20s %s\n", "GREATHER_THAN_OP:", yytext);}
{GREATER_EQUAL_OP}      {printf("token %-20.20s %s\n", "GREATER_EQUAL_OP:", yytext);}
{LOWER_THAN_OP}         {printf("token %-20.20s %s\n", "LOWER_THAN_OP:", yytext);}
{LOWER_EQUAL_OP}        {printf("token %-20.20s %s\n", "LOWER_EQUAL_OP:", yytext);}

{AND_OP}                {printf("token %-20.20s %s\n", "AND_OP:", yytext);}
{OR_OP}                 {printf("token %-20.20s %s\n", "OR_OP:", yytext);}
{NOT_OP}                {printf("token %-20.20s %s\n", "NOT_OP:", yytext);}

{POSITIVE_SIGN_OP}      {printf("token %-20.20s %s\n", "POSITIVE_SIGN_OP:", yytext);}
{NEGATIVE_SIGN_OP}      {printf("token %-20.20s %s\n", "NEGATIVE_SIGN_OP:", yytext);}
{ASSIGN_OP}             {printf("token %-20.20s %s\n", "ASSIGN_OP:", yytext);}

{SEMICOLON}             {printf("token %-20.20s %s\n", "SEMICOLON:", yytext);}
{LEFT_PARENTHESIS}      {printf("token %-20.20s %s\n", "LEFT_PARENTHESIS:", yytext);}
{RIGHT_PARENTHESIS}     {printf("token %-20.20s %s\n", "RIGHT_PARENTHESIS:", yytext);}
{COMMA}                 {printf("token %-20.20s %s\n", "COMMA:", yytext);}
{LEFT_BRACKET}          {printf("token %-20.20s %s\n", "LEFT_BRACKET:", yytext);}
{RIGHT_BRACKET}         {printf("token %-20.20s %s\n", "RIGHT_BRACKET:", yytext);}
{LEFT_CURLY_BRACKET}    {printf("token %-20.20s %s\n", "LEFT_CURLY_BRACKET:", yytext);}
{RIGHT_CURLY_BRACKET}   {printf("token %-20.20s %s\n", "RIGHT_CURLY_BRACKET:", yytext);}
{COLON}                 {printf("token %-20.20s %s\n", "COLON:", yytext);}

{LINE_COMMENT}          {}
{COMMENT}               {}

{WHITE_SPACE}           {}
%%
/********************* USER CODE *************************/
int main() { 
    yylex(); 
}