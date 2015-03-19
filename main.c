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
  char		test4[8];
  size_t	size;

  test4[0] = '0';
  test4[1] = '1';
  test4[2] = '2';
  test4[3] = '3';
  test4[4] = '4';
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

  size = 0;
  /*
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
  printf("dest => '%s'\n", dest);*/
  printf("---------\n");
  printf("MEMMOVE :\n");
  printf("copy '%s' to '%s' .. \n", test4 + 2, test4);
  memmove(test4, test4 + 2, 3);
  printf("dest => '%s'\n", test4);
  printf("---------\n");
  printf("strcspn :\n");
  size = strcspn("toto", "tata");
  printf("size => %zu\n", size);
  printf("---------\n");
  printf("strspn :\n");
  size = strspn("tintin", "tintou");
  printf("size => %zu\n", size);

  printf("strstr = > %s\n", strstr("TestDeLaMortQuiTue", "Mort"));
  printf("strdup = > %s\n", strdup("TestGGGG"));
  printf("strpbrk = > %s \n", strpbrk("TestGGGG", "GGGG"));
  //str str
  //strdup
  //strpbrk
  return (0);
}
