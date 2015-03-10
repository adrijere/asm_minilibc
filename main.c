#include	<string.h>
#include	<stdio.h>
#include	<assert.h>

int		main()
{
  char		*test = "Je suis un test";
  char		*test2 = "Je suis un second Test";
  char		*test3 = "Je suis un 3ème test";
  char		*dest = "Epitech";
  char		*src = "Je suis à ";
  char		*test4 = "llll";

  assert(strlen(test) == 15);
  printf("Strlen Ok !\n");
  assert(strchr(test, ' ') == test + 2);
  printf("Strchr ok !\n");
  assert(strcmp(test, test2) == 1);
  printf("Strcmp ok ! \n");
  assert(strncmp(test, test2, 3) == 0);
  printf("Strncmp ok !\n");
  assert(strcasecmp("azerty", "aZErty") == 0);
  printf("Strcasecmp ok !\n");
  assert(rindex(test, 'e') == test + 12);
  printf("Rindex ok !\n");
  printf("----------\n");
  printf("MEMSET :\n");
  printf("fill %s by n character..\n", test4);
  memset(test4, 'n', 2);
  printf("test4 => %s\n", test4);
  printf("---------\n");
  printf("MEMCOPY :\n");
  printf("copy %s to %s .. \n", dest, src);
  memcpy(dest, src, 7);
  printf("dest => %s\n", dest);
  return (0);
}
