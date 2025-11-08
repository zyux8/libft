/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin_multi.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohaker <ohaker@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/08 20:25:14 by ohaker            #+#    #+#             */
/*   Updated: 2025/11/08 20:26:15 by ohaker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	ft_total_len(const char *first, va_list args)
{
	va_list	copy;
	size_t	total;
	const char	*s;

	va_copy(copy, args);
	total = 0;
	if (first)
		total += ft_strlen(first);
	while ((s = va_arg(copy, const char *)))
		total += ft_strlen(s);
	va_end(copy);
	return (total);
}

char	*ft_strjoin_multi(const char *first, ...)
{
	va_list	args;
	char	*res;
	size_t	total;
	const char	*s;

	if (!first)
		return (NULL);
	va_start(args, first);
	total = ft_total_len(first, args);
	res = (char *)malloc(sizeof(char) * (total + 1));
	if (!res)
		return (NULL);
	res[0] = '\0';
	ft_strlcat(res, first, total + 1);
	while ((s = va_arg(args, const char *)))
		ft_strlcat(res, s, total + 1);
	va_end(args);
	return (res);
}
