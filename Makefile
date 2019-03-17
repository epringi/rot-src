CC      = gcc
PROF    = -O -g2 -lcrypt
NOCRYPT =
MACHINE = #-march=athlon
C_FLAGS =  $(MACHINE) -Wall $(PROF) $(NOCRYPT)

O_FILES = act_comm.o act_info.o act_wiz2.o auction.o bit.o const.o db.o fight.o \
	 forge.o healer.o magic2.o mem_handler.o music.o olc.o quest.o save.o \
	 skills.o tables.o act_enter.o act_move.o act_wiz.o ban.o clans.o \
	 curse.o deity.o finger.o forget.o interp.o magic.o mob_cmds.o note.o \
	 olc_mpcode.o recycle.o scan.o special.o update.o wizlist.o act_info2.o \
	 act_obj.o alias.o banks.o comm.o db2.o effects.o flags.o handler.o lookup.o \
	 mem.o mob_prog.o olc_act.o olc_save.o repent.o sign.o string.o vehicle.o

rom: $(O_FILES)
	rm -f ../area/rom
	$(CC) $(L_FLAGS) -o ../area/rom $(O_FILES) -lcrypt

clean:
	rm -f *.o ../area/rom core

.c.o: merc.h
	$(CC) -c $(C_FLAGS) $<
