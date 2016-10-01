#include <stdlib.h>
#include <errno.h>
#include "lexer.h"
#include "parser.h"
int k_parse(struct k_token *tokens, size_t size)
{
  int t = 0;
  int *i = &t;
  return k_expression(tokens, size, i);
}

int k_expression(struct k_token *tokens, size_t size, int *i)
{
  int result = k_term(tokens, size, i);
  while(*i < size && (tokens[*i].type == PLUS || tokens[*i].type == MINUS))
  {
    if(tokens[*i].type == PLUS)
    {
      (*i)++;
      result = result + k_term(tokens, size, i);
    }
    else if(tokens[*i].type == MINUS)
    {
      (*i)++;
      result = result - k_term(tokens, size, i);
    }
    else
    {
      exit(EXIT_FAILURE);
    }
  }
  return result;
}

int k_term(struct k_token *tokens, size_t size, int *i)
{
  int result = k_factor(tokens, size, i);
  while(*i < size && (tokens[*i].type == MULTIPLY || tokens[*i].type == DIVIDE))
  {
    if(tokens[*i].type == MULTIPLY )
    {
      (*i)++;
      result = result * k_factor(tokens, size, i);
    }
    else if(tokens[*i].type == DIVIDE)
    {
      (*i)++;
      result = result / k_factor(tokens, size, i);
    }
    else
    {
      exit(EXIT_FAILURE);
    }
  }
  return result;
}

int k_factor(struct k_token *tokens, size_t size, int *i){
  int result;
  if(tokens[*i].type == INTEGER)
  {
    result = strtol(tokens[*i].value, NULL, 10);
    (*i)++;
  }
  else if(tokens[*i].type == LPAREN)
  {
    (*i)++;
    result = k_expression(tokens, size, i);
    if(tokens[*i].type != RPAREN)
    {
      exit(EXIT_FAILURE);
    }
    (*i)++;
  }
  else
  {
    exit(EXIT_FAILURE);
  }
  return result;
}
