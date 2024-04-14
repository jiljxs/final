%{
    #include "y.tab.h"
%}


NUMBER      [0-9]       
ALPHABET    [a-zA-Z]

%%

[\t];
{NUMBER}+   { strcpy(yylval.str, yytext); return ID; }
{ALPHABET}  { strcpy(yylval.str, yytext); return ID; }
"while"     { return WHILE; }
"do"        { return DO; }
"<"     { yylval.symbol=yytext[0]; return OP; }
">"     { yylval.symbol=yytext[0]; return OP; }
"!="        { yylval.symbol=yytext[0]; return OP; }
"=="        { yylval.symbol=yytext[0]; return OP; }
[\n];
.       { return yytext[0]; }

%%
