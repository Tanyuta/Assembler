#include <unistd.h>

int			main()
{
	int		n = 0x6d;
	char	c;

	c = (char)n;
	write(1, &c, 1);
	return (1);
}