# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bfranks <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/10 16:27:48 by bfranks           #+#    #+#              #
#    Updated: 2022/03/10 14:33:52 by bfranks          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra
CFILES = $(wildcard *.c)
OFILES = $(CFILES:.c=.o)

all: $(NAME)

$(NAME): $(OFILES)
	ar -rc $@ $^ 

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	-rm *.o

fclean: clean
	-rm *.a

re: fclean all

.PHONY: all clean fclean re
