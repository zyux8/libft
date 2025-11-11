/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_append_str.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohaker <ohaker@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/11 15:07:38 by ohaker            #+#    #+#             */
/*   Updated: 2025/11/11 15:11:11 by ohaker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char    *ft_append_str(char *dest, char *src)
{
    size_t  dest_len;
    size_t  src_len;
    char    *old_dest;
    char    *res;

    if (!dest && !src)
        return (NULL);
    if (!dest)
        return (ft_strdup(src));
    dest_len = ft_strlen(dest);
    src_len = ft_strlen(src);
    old_dest = dest;
    res = (char *)malloc(sizeof(char) * (dest_len + src_len + 1));
    if (!res)
        return (NULL);
    ft_memcpy(res, dest, dest_len);
    ft_memcpy(res + dest_len, src, src_len + 1); 
    free(old_dest);
    return (res);
}
//appends the string src onto dest