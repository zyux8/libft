# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohaker <ohaker@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/12 20:58:51 by ohaker            #+#    #+#              #
#    Updated: 2024/12/01 18:03:11 by ohaker           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Wextra -Werror # Flags used for compiling the .c files.
SRC = \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_strlen.c \
	ft_strncmp.c \
	ft_memcmp.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_bzero.c \
	ft_memset.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memchr.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strcpy.c \
	ft_strtrim.c \
	ft_strrev.c \
	ft_chrnbr.c \
	ft_split.c \
	ft_count_words.c \
	ft_strncpy.c \
	ft_itoa.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_putchar_fd.c \
	ft_putchar.c \
	ft_putstr_fd.c \
	ft_putstr.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putnbr.c 
# All files that are supposed to be used in this Makefile.

SRCB = \
	ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c
# All bonus files that are supposed to be used in this Makefile.

OBJ = $(SRC:.c=.o)

OBJB = $(SRCB:.c=.o)

all:	$(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

%.o: %.c
	cc $(CFLAGS) -c $< -o $@
# Without these nothing would compile with the given cflags.

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)

re:	fclean all

bonus: $(OBJB)
	ar rc $(NAME) $(OBJB)

franci:
	clear
	~/francinette/tester.sh
# Testing with francinette. Clears the terminal and starts tester.
# alias francinette="$HOME"/francinette/tester.sh
# alias paco="$HOME"/francinette/tester.sh

mygit:
	@bash -c ' \
	cd ../../GitHub/libft && \
	cp -ru ~/Projects/libft/ ~/GitHub/libft/ && \
	git add . && \
	git status && \
	read -p "Commitment message: " input; \
	git commit -m "$$input" && \
	git push origin main'
# Command to copy all changed files into another directory
# so it can be pushed into my GitHub.