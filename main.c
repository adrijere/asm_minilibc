#include	<string.h>
#include	<stdio.h>
#include	<assert.h>

int		main()
{
  char		*test = "Je suis un test";
  char		*test2 = "Je suis un second Test";
  char		*test3 = "Je suis un 3ème test";

  assert(strlen(test) == 15);
  printf("Strlen Ok !\n");
  assert(strchr(test, ' ') == test + 2);
  printf("Strchr ok !\n");
  assert(strcmp(test, test2) == 1);
  printf("Strcmp ok ! \n");
  assert(strncmp(test, test2, 3) == 0);
  printf("Strncmp ok !\n");
  assert(strcasecmp("azerty", "aZErty") == 0);
  return (0);
}
