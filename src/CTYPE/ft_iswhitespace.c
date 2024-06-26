/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_iswhitespace.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tom <tom@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/26 04:09:14 by tom               #+#    #+#             */
/*   Updated: 2024/06/26 04:09:33 by tom              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libamoa.h"

bool	is_whitespace(char	c)
{
	return (c == ' ' || c == '\t' || c == '\v' || c == '\n');
}
