# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jnoh <jnoh@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/12 21:40:44 by jnoh              #+#    #+#              #
#    Updated: 2022/08/24 15:14:27 by jnoh             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC		= cc
CFLAGS	= -Wall -Werror -Wextra -I .
SRCS	= ft_printf.c ft_printf_utils.c ft_printf_utils2.c
OBJS	= $(SRCS:.c=.o)
LIBFT	= libft/libft.a
NAME	= libftprintf.a
RM 		= rm -f
AR		= ar rcs
HEADERS	= ft_printf.h ./libft/libft.h

define libft_call
		cd libft && $(MAKE) $(1) && cd ..
endef

all:	$(NAME)

${NAME}: $(OBJS) $(HEADERS)
		$(call libft_call, all)
		cp $(LIBFT) $(NAME)
		$(AR) $(NAME) $(OBJS)

clean:
	cd libft && make clean && cd ..
	$(RM) $(OBJS)

fclean:
	cd libft && make fclean && cd ..
	$(RM) $(OBJS)
	$(RM) $(NAME)

re:
	$(MAKE) fclean
	$(MAKE) all

.PHONY: all clean fclean re