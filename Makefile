##
## Makefile for asm_minilibC in /home/noel_h/rendu/asm_minilibc
## 
## Made by Pierre NOEL
## Login   <noel_h@epitech.net>
## 
## Started on  Wed Feb 25 10:42:46 2015 Pierre NOEL
## Last update Sun Mar 22 13:12:25 2015 Jérémy MATHON
##

NAME		=		libasm.so

ASM		=		nasm

CC		=		gcc

ASFLAGS		=		-f elf64

SRC		=		strcmp.S	\
				strlen.S	\
				strstr.S	\
				strchr.S	\
				strdup.S	\
				strncmp.S	\
				strcasecmp.S	\
				rindex.S	\
				strpbrk.S	\
				memcpy.S	\
				memmove.S	\
				memset.S	\
				strcspn.S	\
				strspn.S	\

OBJ		=		$(SRC:.S=.o)

%.o: %.S
				$(ASM) $(ASFLAGS) $< -o $@

all:				$(NAME)

$(NAME):			$(OBJ)
				$(CC) -o $(NAME) -fPIC -shared $(OBJ)
clean:
				rm -f $(OBJ)

fclean:				clean
				rm -f $(NAME)

re:				fclean all
