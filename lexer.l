%{
  #include <stdio.h>
  int lineNum = 1;
%}

/*Essential Types*/

DIGIT       [0-9]
SIGN        [+-]

DECIMAL     {DIGIT}+\.{DIGIT}+
INTEGER     {DIGIT}+
EXPONENTIAL [eE]?{SIGN}?({DIGIT}+)?

NUMERICAL_OPERATORS     \*\*|[+\-\*\/%]
RELATIONAL_OPERATORS    [=!<]\=|<
LOGICAL_OPERATORS       "and"|"or"|"not"3
EQUALS                  =


/*Miniscript Types*/

NUMBER      {SIGN}?({DECIMAL}|{INTEGER}){EXPONENTIAL}
/*number backup [+|-]?([0-9]+\.[0-9]+|[0-9]+)[eE]?[+|-]?([0-9]+)?*/
IDENTIFIER  ([A-Z]|[a-z])[0-z]*
OPERATORS   {SIGN}|{NUMERICAL_OPERATORS}|{RELATIONAL_OPERATORS}|{LOGICAL_OPERATORS}
DELIMITERS  [;\(\),\[\]\{\}:]
WHITE_SPACE [ \t\r\n]
COMMENTS    /*.*/
/*comments backup  \/\**[^\/]*\*\/   (works only once per source code XD)*/