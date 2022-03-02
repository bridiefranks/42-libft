/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bfranks <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/24 14:47:48 by bfranks           #+#    #+#             */
/*   Updated: 2022/02/24 14:52:34 by bfranks          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libft.h"

int	ft_isalnum(int	b)
{
	//TODO fix this stuff
	//if ((ft_isalpha(b) == 0) || (ft_isdigit(b) == 0))
	//{
		//return (0);
	//}
	return (b);
}

int	main(void)
{
	int	v;

	v = ft_isalnum('5');
	printf("%d\n", v);
	return (0);
}
