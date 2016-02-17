#include <stdio.h>
#define MAX_TOKEN_SIZE 100
enum k_token_type {
  INTEGER,
  LPAREN,
  RPAREN,
  PLUS,
  MINUS,
  MULTIPLY,
  DIVIDE,
};
struct k_token {
  char value[MAX_TOKEN_SIZE];
  int size;
  enum k_token_type type;
};
int k_tokenize(char *, size_t, struct k_token *);
