# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ttaquet <ttaquet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/16 16:02:49 by ttaquet           #+#    #+#              #
#    Updated: 2024/04/09 17:18:39 by ttaquet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libamoa.a

CC = cc
CFLAGS = -Wall -Wextra -Werror -Iinclude

CTYPE = ft_isalnum ft_isalpha ft_isdigit ft_isascii ft_isprint ft_toupper ft_tolower

GET_NEXT_LINE = get_next_line

IO = ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd ft_putnbr_base_fd

LINKED_LIST = ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone \
ft_lstclear ft_lstiter ft_lstmap

PRINTF = ft_printf ft_printf_utils

DOUBLE_ARRAY = double_array_size ft_free_double_array

STDLIB = ft_atoi ft_calloc

STRING = ft_strlen ft_memset ft_bzero ft_memcpy ft_memcpy ft_memmove ft_striteri \
ft_strlcpy ft_strlcat ft_strchr ft_strrchr ft_strncmp ft_memchr ft_memcmp ft_strnstr \
ft_strdup ft_substr ft_strjoin ft_strjoin ft_strtrim ft_itoa ft_strmapi ft_strcpy

FILES = $(CTYPE) $(GET_NEXT_LINE) $(IO) $(PRINTF) $(DOUBLE_ARRAY) $(STDLIB) $(STRING)

SRC_FILES = $(addprefix src/CTYPE/, $(CTYPE)) \
$(addprefix src/GET_NEXT_LINE/, $(GET_NEXT_LINE)) \
$(addprefix src/IO/, $(IO)) \
$(addprefix src/LINKED_LIST/, $(LINKED_LIST)) \
$(addprefix src/PRINTF/, $(PRINTF)) \
$(addprefix src/DOUBLE_ARRAY/, $(DOUCLE_ARRAY)) \
$(addprefix src/STDLIB/, $(STDLIB)) \
$(addprefix src/STRING/, $(STRING))

OBJ_DIR = obj/

SRCS = $(addsuffix .c, $(SRC_FILES))
OBJS = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILES)))

.PHONY = all clean fclean re

all: $(OBJ_DIR) $(OBJS)
	@echo "\033[32m✔ Compilation des fichiers objets...\033[37m"
	@ar -rcs $(NAME) $(OBJS)
	@echo "\033[32m✔ Lib créee.\033[37m"

clean:
	@echo "\033[32m✔ Suppression des fichiers objets...\033[37m"
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

obj/%.o: src/*/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $@
