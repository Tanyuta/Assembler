.name "zork"
.comment "I'M ALIIIIVE"

ll: live %1

l2:		live %1
		sti r1, %:live, %1
		and r1, %0, r1

live:	live %1
		zjmp %:live


ff: zjmp %:live
