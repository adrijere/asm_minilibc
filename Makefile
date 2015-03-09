##
## Makefile for asm_minilibC in /home/noel_h/rendu/asm_minilibc
## 
## Made by Pierre NOEL
## Login   <noel_h@epitech.net>
## 
## Started on  Wed Feb 25 10:42:46 2015 Pierre NOEL
## Last update Mon Mar  9 17:04:25 2015 Pierre NOEL
##

NAME		=		libasm.so

ASM		=		nasm

CC		=		gcc

ASFLAGS		=		-f elf64

SRC		=		strchr.S	\
				strstr.S	\
				strlen.S	\
				strdup.S	\
				strcmp.S	\
				strncmp.S	\


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
