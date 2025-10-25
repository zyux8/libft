# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohaker <ohaker@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/12 20:58:51 by ohaker            #+#    #+#              #
#    Updated: 2025/10/26 01:09:05 by ohaker           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Wextra -Werror # Flags used for compiling the .c files.
SRC = \
	ft_atoi.c \
	ft_atol.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_chrnbr.c \
	ft_conv_to_neg.c \
	ft_conv_to_pos.c \
	ft_count_words.c \
	ft_error.c \
	ft_free_split.c \
	ft_intlen.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_isspace.c \
	ft_itoa.c \
	ft_lstadd_back.c \
	ft_lstadd_front.c \
	ft_lstclear.c \
	ft_lstdelone.c \
	ft_lstiter.c \
	ft_lstlast.c \
	ft_lstmap.c \
	ft_lstnew.c \
	ft_lstsize.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_print_hex_upp.c \
	ft_print_hex.c \
	ft_print_ptr.c \
	ft_putchar.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr.c \
	ft_putnbry.c \
	ft_putnbr_fd.c \
	ft_putstr.c \
	ft_putstry.c \
	ft_putunsignbr.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strcmp.c \
	ft_strcpy.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strncpy.c \
	ft_strnstr.c \
	ft_strrev.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c
# All files that are supposed to be used in this Makefile.

OBJ = $(SRC:.c=.o)

NONE		= \033[0m
GREEN		= \033[32;01m
RED			= \033[31;01m
ORANGE		= \033[33;01m
# Color definitions for terminal output

all:	$(NAME)

$(NAME): $(OBJ)
	@echo "$(ORANGE)		- Creating $(NAME)...$(NONE)"
	@ar rc $(NAME) $(OBJ)
	@echo "$(GREEN)		- $(NAME) Created -$(NONE)"

%.o: %.c
	@cc $(CFLAGS) -c $< -o $@

clean:
	@rm -f $(OBJ)

fclean:	clean
	@rm -f $(NAME)

re:	fclean all

franci:
	clear
	~/francinette/tester.sh
# Testing with francinette. Clears the terminal and starts tester.
# alias francinette="$HOME"/francinette/tester.sh
# alias paco="$HOME"/francinette/tester.sh

mygit:
	@git add .
	@git status
	@echo "$(ORANGE)		- Waiting for commit message...$(NONE)"
	@echo "Enter commit message:"; \
	read input; \
	git commit -m "$$input"
	@git push origin main
	@echo "$(GREEN)		- Pushed to git$(NONE)"

# Command to copy all changed files into another directory
# so it can be pushed into my GitHub.

.PHONY: all clean fclean re franci mygit