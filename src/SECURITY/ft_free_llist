/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free_llist.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ttaquet <ttaquet@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/09 15:05:30 by ttaquet           #+#    #+#             */
/*   Updated: 2024/01/09 15:05:59 by ttaquet          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "itsmylib.h"

void	ft_free_llist(t_stack **lst)
{
	t_stack	*tmp;

	if (!lst)
		return ;
	while (*lst)
	{
		tmp = (*lst)->next;
		(*lst)->nbr = 0;
		free(*lst);
		*lst = tmp;
	}
}
