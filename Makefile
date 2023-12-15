# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ttaquet <ttaquet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/16 16:02:49 by ttaquet           #+#    #+#              #
#    Updated: 2023/12/15 14:04:13 by ttaquet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror -Iinclude

CTYPE = ft_isalnum ft_isalpha ft_isdigit ft_isascii ft_isprint ft_toupper ft_tolower

PRINTF = ft_printf ft_printf_utils

STRING = ft_strlen ft_memset ft_bzero ft_memcpy ft_memcpy ft_memmove ft_striteri \
ft_strlcpy ft_strlcat ft_strchr ft_strrchr ft_strncmp ft_memchr ft_memcmp ft_strnstr \
ft_strdup ft_substr ft_strjoin ft_strjoin ft_strtrim ft_itoa ft_strmapi ft_strcpy

STDLIB = ft_atoi ft_calloc ft_realloc

IO = ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd ft_putnbr_base_fd

LINKED_LIST = ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone \
ft_lstclear ft_lstiter ft_lstmap

GET_NEXT_LINE = get_next_line

FILES = $(CTYPE) $(PRINTF) $(string) $(STDLIB) $(IO) $(LINKED_LIST) $(GET_NEXT_LINE)

OBJ_DIR = obj/

SRCS = $(addprefix src/, $(addsuffix .c, $(FILES)))
OBJS = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILES)))

.PHONY = all clean fclean re

all: $(OBJ_DIR) $(OBJS)
	@echo "\033[32m✔ Compilation des fichiers sources...\033[37m"
	@ar -rcs $(NAME) $(OBJS)
	@echo "\033[32m✔ Bibliothèque créee.\033[37m"

clean:
	@echo "\033[31m✔ Suppression des fichiers sources...\033[37m"
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

obj/%.o: src/*/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $@

