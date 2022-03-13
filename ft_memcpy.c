/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bfranks <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/03 18:17:52 by bfranks           #+#    #+#             */
/*   Updated: 2022/03/03 18:18:04 by bfranks          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
    unsigned char *d;
    const unsigned char *s;
    size_t i;

    d = dst;
    s = src;
    for (i = 0; i < n; i++)
    {
           d[i] = s[i];
    }
	return(dst);
}
