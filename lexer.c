#include <ctype.h>
#include <stdlib.h>
#include "lexer.h"

int k_tokenize(char *f, size_t size, struct k_token *tokens)
{
  int tokens_length = 0;
  int position = 0;
  while(position < size)
  {
    if(isdigit(f[position]))
    {
      struct k_token t;
      int j = 0;
      for(; (position + j) < size && j < MAX_TOKEN_SIZE && isdigit(f[position+j]); j++)
      {
        t.value[j] = f[position+j];
      }
      t.value[j] = '\0';
      t.size = j + 1;
      t.type = INTEGER;
      tokens[tokens_length] = t;
      tokens_length++;
      position += j;
    }
    else if(
      f[position] == '+' ||
      f[position] == '-' ||
      f[position] == '*' ||
      f[position] == '/' ||
      f[position] == '(' ||
      f[position] == ')'
    )
    {
      struct k_token t;
      t.value[0] = f[position];
      t.value[1] = '\0';
      t.size = 2;
      if(f[position] == '+')
        t.type = PLUS;
      else if(f[position] == '-')
        t.type = MINUS;
      else if(f[position] == '*')
        t.type = MULTIPLY;
      else if(f[position] == '/')
        t.type = DIVIDE;
      else if(f[position] == '(')
        t.type = LPAREN;
      else if(f[position] == ')')
        t.type = RPAREN;
      tokens[tokens_length] = t;
      tokens_length++;
      position++;
    }
    else
    {
      position += 1;
    }
  }
  
  return tokens_length;
} 
