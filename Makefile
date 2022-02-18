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
/* not entirely sure what the -c does. Something to do with compiling it unlinked as there is no associated main. Might have to be included below possibly, rather than in CFLAGS*/
CFLAGS = -Wall -Wextra -Werror -c
/*only include files so far finished*/
SOURCE = ft_isalpha.c ft_isdigit.c
/*this bit defines the obj as including the list of all things that are in source (all the function files) that have a .o rather than a .c. It does not make them, it just looks through and pulls out the ones that have .o (will be actually made later) */
OBJ = $(SOURCE:.c=.o)

/*the first action type thing is always automatically done when you write make. So, the all bit is automatically done. This bit says; do the NAME bit*/
all: $(NAME)

/* now this bit is the NAME bit that all had instructed the computer to do. Could have more than one thing under all, so that more than one thing is automatically run. In this case it is just one tho (NAME). So it makes the libft.a file (we do not need to do anything with it, it is just made) then runs CC on it (compiles) and CFLAGS (with all the flags) and SOURCE (does this for all the files).*?
$(NAME):
	$(CC) $(CFLAGS) $(SOURCE)
/* then ar rc is to create an archive, then the NAME OBJ bit goes through all the files within libft.a that have a .o and i guess puts these into the archive. Not actually sure why we want an archive of the .o files tho. Normally they are not retained during the compiling process (?) */
	ar rc $(NAME) $(OBJ)

/*removes .o files*/
clean:
	rm -f $(OBJ)

/*removes .o files as per clean, then removes the libft.a file*/
fclean: clean
	rm -f $(NAME)

/* does f clean then does all (so removes all .o and libft.a, then makes a libft.a again and compiles it with flags and makes an archive and stores all the .o files to retain them. Basically re-does it, for when changes have been made and u want to reset the compiling*/
re: fclean all

/* have to put the things in here so that they when u type make re, for example, it does not go looking for a file called re. So essentially highlights fact that these terms have particular meanings, see above, type thing.*/
.PHONY: all clean fclean re
