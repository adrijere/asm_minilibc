#include	<string.h>
#include	<stdio.h>
#include	<assert.h>

int		main()
{
  char		*test = "Je suis un test";
  char		*test2 = "Je suis un second Test";
  char		*test3 = "Je suis un 3ème test";
  char		dest[8];
  char		src[11];
  char		test4[6];

  test4[0] = 'l';
  test4[1] = 'l';
  test4[2] = 'l';
  test4[3] = 'l';
  test4[4] = 'l';
  test4[5] = 0;

  dest[0] = 'E';
  dest[1] = 'p';
  dest[2] = 'i';
  dest[3] = 't';
  dest[4] = 'e';
  dest[5] = 'c';
  dest[6] = 'h';
  dest[7] = 0;

  src[0] = 'j';
  src[1] = 'e';
  src[2] = ' ';
  src[3] = 's';
  src[4] = 'u';
  src[5] = 'i';
  src[6] = 's';
  src[7] = ' ';
  src[8] = 'a';
  src[9] = ' ';
  src[10] = 0;

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
  printf("copy '%s' to '%s' .. \n", src, dest);
  memcpy(dest, src, 7);
  printf("dest => '%s'\n", dest);
  return (0);
}
