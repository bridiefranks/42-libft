/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bfranks <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/03 18:27:24 by bfranks           #+#    #+#             */
/*   Updated: 2022/03/03 18:27:40 by bfranks          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
    size_t i;

    i = 0;
    while (s1[i] && s2[i] == s1[i] && i < n - 1)
    {
        i++;
    } 
    if (n == 0)
        return (0);
    if (s1[i] > s2[i])
            return (1);
    if (s1[i] < s2[i])
            return (-1);
    return (0);
}
