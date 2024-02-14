# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tom <tom@student.42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/16 16:02:49 by ttaquet           #+#    #+#              #
#    Updated: 2024/02/14 18:32:38 by tom              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libamoa.a

Makefile += -s

CC = cc
CFLAGS = -Wall -Wextra -Werror -Iinclude

CTYPE = ft_isalnum ft_isalpha ft_isdigit ft_isascii ft_isprint ft_toupper ft_tolower

GET_NEXT_LINE = get_next_line

IO = ft_putchar_fd ft_putstr_fd ft_putendl_fd ft_putnbr_fd ft_putnbr_base_fd

LINKED_LIST = ft_lstnew ft_lstadd_front ft_lstsize ft_lstlast ft_lstadd_back ft_lstdelone \
ft_lstclear ft_lstiter ft_lstmap

PRINTF = ft_printf ft_printf_utils

SAFE = ft_freelst ft_free_llist

STDLIB = ft_atoi ft_calloc ft_realloc

STRING = ft_strlen ft_memset ft_bzero ft_memcpy ft_memcpy ft_memmove ft_striteri \
ft_strlcpy ft_strlcat ft_strchr ft_strrchr ft_strncmp ft_memchr ft_memcmp ft_strnstr \
ft_strdup ft_substr ft_strjoin ft_strjoin ft_strtrim ft_itoa ft_strmapi ft_strcpy

FILES = $(CTYPE) $(GET_NEXT_LINE) $(IO) $(LINKED_LIST) $(PRINTF) $(SAFE) $(STDLIB) $(STRING)

SRC_FILES = $(addprefix src/CTYPE/, $(CTYPE)) \
$(addprefix src/GET_NEXT_LINE/, $(GET_NEXT_LINE)) \
$(addprefix src/IO/, $(IO)) \
$(addprefix src/LINKED_LIST/, $(LINKED_LIST)) \
$(addprefix src/PRINTF/, $(PRINTF)) \
$(addprefix src/SAFE/, $(SAFE)) \
$(addprefix src/STDLIB/, $(STDLIB)) \
$(addprefix src/STRING/, $(STRING))

OBJ_DIR = obj/

SRCS = $(addsuffix .c, $(SRC_FILES))
OBJS = $(addprefix $(OBJ_DIR), $(addsuffix .o, $(FILES)))

.PHONY = all clean fclean re

all: $(OBJ_DIR) $(OBJS)
	@echo "\033[32m✔ Compilation des fichiers sources...\033[37m"
	@ar -rcs $(NAME) $(OBJS)
	@echo "\033[32m✔ Bibliothèque créee.\033[37m"

clean:
	@echo "\033[32m✔ Suppression des fichiers sources...\033[37m"
	@rm -rf $(OBJ_DIR)
	@echo "\033[32m✔ Fichier sources supprimer...\033[37m"

fclean: clean
	@echo "\033[32m✔ Suppression de la bibliothèque...\033[37m"
	@rm -rf $(NAME)
	@echo "\033[32m✔ Bibliothèque supprimer...\033[37m"

re: fclean all

obj/%.o: src/*/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR):
	@echo "\033[32m✔ création du dossier obj...\033[37m"
	@mkdir -p $@
	@echo "\033[32m✔ dossier obj crée...\033[37m"
