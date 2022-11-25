# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mamuller <mamuller@student.42wolfsburg>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/01 18:51:39 by mamuller          #+#    #+#              #
#    Updated: 2021/06/01 18:51:39 by mamuller         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -f
SRC		= ft_itoa.c ft_split.c ft_strtrim.c ft_memccpy.c ft_strdup.c ft_substr.c ft_strchr.c \
			ft_strjoin.c ft_strlcat.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strrchr.c ft_tolower.c \
			ft_toupper.c ft_calloc.c ft_isalnum.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
			ft_memcmp.c ft_memmove.c ft_memset.c ft_strlcpy.c ft_isalpha.c ft_strnstr.c ft_bzero.c ft_atoi.c \
			ft_memcpy.c ft_putstr_fd.c ft_putnbr_fd.c ft_putendl_fd.c ft_putchar_fd.c
SRC_BONUS	= ft_lstdelone.c ft_lstadd_front.c ft_lstnew.c ft_lstlast.c ft_lstsize.c ft_lstclear.c ft_lstadd_back.c ft_lstiter.c ft_lstmap.c
OBJ			= $(SRC:%.c=%.o)
OBJ_BONUS	= $(SRC_BONUS:%.c=%.o)
NAME		= libft.a
HEADF		= libft.h

.c.o:
			${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME):	${OBJ}
			ar rcs ${NAME} ${OBJ}

bonus:		${OBJ_BONUS}
			ar rcs ${NAME} ${OBJ_BONUS}

all:		${NAME}

clean:		
			${RM} ${OBJ}
			${RM} a.out
			${RM} ${OBJ_BONUS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean bonus fclean re