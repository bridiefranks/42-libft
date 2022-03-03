# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bfranks <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/10 16:27:48 by bfranks           #+#    #+#              #
#    Updated: 2022/03/03 14:40:48 by bfranks          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
CFILES = $(wildcard *.c)
OFILES = $(CFILES:.c=.o)

$(NAME): $(OFILES)
	ar -rc $@ $^ 

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	-rm *.o

fclean:
	-rm *.o *.a

re: fclean all

.PHONY: all clean fclean re
