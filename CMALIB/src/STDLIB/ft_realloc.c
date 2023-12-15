/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_realloc.c.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttaquet <ttaquet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 16:22:36 by ttaquet           #+#    #+#             */
/*   Updated: 2023/10/20 14:56:15 by ttaquet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_realloc(void *ptr, size_t size)
{
	void	*tmp;

	tmp = NULL;
	if (ptr == NULL)
		return (ptr = malloc (size));
	tmp = malloc (size);
	if (!tmp)
		return (NULL);
	ft_memcpy (tmp, ptr, size);
	free(ptr);
	ptr = malloc (size);
	if (!ptr)
		return (NULL);
	ft_memcpy (ptr, tmp, size);
	return (ptr);
}
