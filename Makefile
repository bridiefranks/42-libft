# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bfranks <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/10 16:27:48 by bfranks           #+#    #+#              #
#    Updated: 2022/02/10 16:42:55 by bfranks          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror -c
SOURCE = ft_isalpha.c ft_isdigit.c
OBJ = $(SOURCE:.c=.o)

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) $(SOURCE)
#/* then ar rc is to create an archive, then the NAME OBJ bit goes through all the files within libft.a that have a .o and i guess puts these into the archive. Not actually sure why we want an archive of the .o files tho. Normally they are not retained during the compiling process (?) */
	ar -rc $(NAME) $(OBJ)

#/*removes .o files*/
clean:
	rm -f $(OBJ)

#/*removes .o files as per clean, then removes the libft.a file*/
fclean: clean
	rm -f $(NAME)

#/* does f clean then does all (so removes all .o and libft.a, then makes a libft.a again and compiles it with flags and makes an archive and stores all the .o files to retain them. Basically re-does it, for when changes have been made and u want to reset the compiling*/
re: fclean all

#/* have to put the things in here so that they when u type make re, for example, it does not go looking for a file called re. So essentially highlights fact that these terms have particular meanings, see above, type thing.*/
.PHONY: all clean fclean re
