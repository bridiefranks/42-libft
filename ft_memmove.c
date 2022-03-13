/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bfranks <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/03 18:19:24 by bfranks           #+#    #+#             */
/*   Updated: 2022/03/03 18:19:33 by bfranks          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
    unsigned char *d;
    const unsigned char *s;
    size_t i;

    d = dst;
    s = src;
    if (d < s)
    {
       for (i = 0; i < len; i++)
       {
          d[i] = s[i];
       }
    }
    else
    {
       for (i = len; i > 0; i--)
       {
          d[i - 1] = s[i - 1];
       }
    } 
	return(dst);
}
