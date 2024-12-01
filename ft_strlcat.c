/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohaker <ohaker@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/11 17:55:58 by ohaker            #+#    #+#             */
/*   Updated: 2024/11/15 18:21:04 by ohaker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dest, const char *src, size_t n)
{
	size_t	x;
	size_t	y;

	x = 0;
	y = ft_strlen(dest);
	if (n == 0)
		return (ft_strlen(src));
	if (y < n - 1)
	{
		while (x + y < n - 1 && src[x])
		{
			dest[y + x] = src[x];
			x++;
		}
		dest[y + x] = '\0';
	}
	if (y >= n)
		y = n;
	return (ft_strlen(src) + y);
}
/* Returns the length of the theoretical string when
	src is put at the end of dest */
