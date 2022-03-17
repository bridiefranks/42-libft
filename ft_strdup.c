/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bfranks <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/03 18:34:23 by bfranks           #+#    #+#             */
/*   Updated: 2022/03/17 14:04:56 by bfranks          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char	*str;
	int		i;
	int		j;

	i = 0;
	j = ft_strlen(s1);
	str = (char *)malloc(sizeof(*str) * (j + i));
	while (i < j)
	{
		str[i] = s1[i];
		i++;
	}
	str[i] = '\0';
	return (str);
}
