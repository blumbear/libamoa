/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttaquet <ttaquet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/18 16:31:23 by ttaquet           #+#    #+#             */
/*   Updated: 2023/12/15 18:07:32 by ttaquet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "itsmylib.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char			*joinedstr;
	int				i;
	unsigned int	tmp;

	i = 0;
	tmp = (unsigned int)(ft_strlen(s1) + ft_strlen(s2));
	joinedstr = malloc((tmp + 1) * sizeof(char));
	if (!joinedstr)
		return (NULL);
	while (*s1)
	{
		joinedstr[i] = (*(char *)s1);
		i++;
		s1++;
	}
	while (*s2)
	{
		joinedstr[i] = (*(char *)s2);
		i++;
		s2++;
	}
	joinedstr[i] = '\0';
	return (joinedstr);
}
