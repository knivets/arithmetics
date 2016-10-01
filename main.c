#include <stdio.h>
#include <stdlib.h>
#include "lexer.h"
#include "parser.h"
int k_get_file_size(FILE *file)
{
  if(file != NULL)
  {
    fseek(file, 0L, SEEK_END);
    size_t file_size = ftell(file);
    rewind(file);
    return file_size;
  }
  return -1;
}
char *k_read_file_to_buffer(FILE *file, char *buff, size_t length)
{
  char c;
  for(int i = 0; (c = fgetc(file)) != EOF; i++)
  {
    buff[i] = c;
  }
}
int main(int argc, char* argv[])
{
  if(argc > 1)
  {
    FILE *file = fopen(argv[1], "r");
    size_t length = k_get_file_size(file);
    char *buff = malloc(length * sizeof *buff);
    k_read_file_to_buffer(file, buff, length);
    struct k_token *tokens = malloc(length * sizeof *tokens);
    int t_length = k_tokenize(buff, length, tokens);
    int result = k_parse(tokens, t_length);
    printf("%d\n", result);
    free(tokens);
    free(buff);
    fclose(file);
  }
}
