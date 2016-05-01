# $RCSfile: Makefile.SH,v 8912Revision: 4.1 8912Date: 92/08/07 18:29:07 $
#
# $Log:	Makefile.SH,v $

CC = gcc
BYACC = byacc
LDFLAGS =  -Wl,--enable-auto-import -Wl,--export-all-symbols -Wl,--stack,8388608 -Wl,--enable-auto-image-base -fstack-protector -L/usr/local/lib
# XXX Perl malloc temporarily unusable (declaration collisions with stdlib.h)
#mallocsrc = malloc.c
#mallocobj = malloc.o
shellflags = 

libs = -ldl -lcrypt

#
# grrr
SHELL = /bin/sh

# These variables may need to be manually set for non-Unix systems.
AR = ar
EXE_EXT = .exe
LIB_EXT = .a
OBJ_EXT = .o
PATH_SEP = :

FIRSTMAKEFILE = GNUmakefile

# how to tr(anslate) newlines

TRNL = '\n'

OPTIMIZE = -O3

.SUFFIXES: .c $(OBJ_EXT)

RUN = 


REALPERL = ../perl
CCCMD = `sh $(shellflags) cflags "optimize='$(OPTIMIZE)'" $@`

public = a2p$(EXE_EXT) s2p find2perl

private = 

manpages = a2p.man s2p.man

util =

sh = Makefile.SH cflags.SH
shextract = Makefile cflags

pl = find2perl.PL s2p.PL
plextract = find2perl s2p
plexe = find2perl.exe s2p.exe
plc   = find2perl.c s2p.c
plm   = a2p.loadmap

addedbyconf = $(shextract) $(plextract)

h = EXTERN.h INTERN.h ../config.h ../handy.h hash.h a2p.h str.h util.h

c = hash.c $(mallocsrc) str.c util.c walk.c

obj = hash$(OBJ_EXT) $(mallocobj) str$(OBJ_EXT) util$(OBJ_EXT) walk$(OBJ_EXT)

lintflags = -phbvxac


.c$(OBJ_EXT):
	$(CCCMD) -DPERL_FOR_X2P $*.c

all: $(public) $(private) $(util)
	@echo " "

a2p$(EXE_EXT): $(obj) a2p$(OBJ_EXT)
	$(CC) -o a2p $(LDFLAGS) $(obj) a2p$(OBJ_EXT) $(libs)

# I now supply a2p.c with the kits, so the following section is
# used only if you force byacc to run by saying
#    make run_byacc
# byacc 1.8.2 or 1.9 are recommended.

run_byacc:	FORCE
	@ echo Expect many shift/reduce and reduce/reduce conflicts
	$(BYACC) a2p.y
	rm -f a2p.c
	sed -e 's/(yyn = yydefred\[yystate\])/((yyn = yydefred[yystate]))/' \
	    -e 's/(yys = getenv("YYDEBUG"))/((yys = getenv("YYDEBUG")))/' \
	    -e 's/^yyerrlab://' \
	    -e 's/^    goto yyerrlab;//' \
	    -e 's/^yynewerror://' \
	    -e 's/^    goto yynewerror;//' \
	    -e 's|^static char yysccsid\(.*\)|/* static char yysccsid\1 */|' \
	    -e 's/^\(char \*yyname\[\]\)/const \1/' \
	    -e 's/^\(char \*yyrule\[\]\)/const \1/' \
	    -e 's/^\(    register\) \(char \*yys;\)/\1 const \2/' \
	    < y.tab.c > a2p.c

FORCE:

# We don't want to regenerate a2p.c, but it might appear out-of-date
# after a patch is applied or a new distribution is made.
a2p.c: a2p.y
	-@sh -c true

a2p$(OBJ_EXT): a2p.c a2py.c a2p.h EXTERN.h util.h INTERN.h \
		../handy.h ../config.h str.h hash.h
	$(CCCMD) a2p.c

clean:
	rm -f a2p$(EXE_EXT) psed *$(OBJ_EXT) $(plexe) $(plc) $(plm)

realclean: clean
	-rmdir .depending
	rm -f core $(addedbyconf) all malloc.c
	rm -f $(FIRSTMAKEFILE) $(FIRSTMAKEFILE).old makefile.old

veryclean: realclean
	rm -f *~ *.orig

# The following lint has practically everything turned on.  Unfortunately,
# you have to wade through a lot of mumbo jumbo that can't be suppressed.
# If the source file has a /*NOSTRICT*/ somewhere, ignore the lint message
# for that spot.

lint:
	lint $(lintflags) $(defs) $(c) > a2p.fuzz

depend: $(mallocsrc) ../makedepend
	sh ../makedepend MAKE=$(MAKE)

clist:
	echo $(c) | tr ' ' $(TRNL) >.clist

hlist:
	echo $(h) | tr ' ' $(TRNL) >.hlist

shlist:
	echo $(sh) | tr ' ' $(TRNL) >.shlist

# These should be automatically generated

$(plextract):
	$(RUN) ../miniperl -I../lib $@.PL

find2perl: find2perl.PL

s2p: s2p.PL

malloc.c: ../malloc.c
	rm -f malloc.c
	sed <../malloc.c >malloc.c \
	    -e 's/"EXTERN.h"/"..\/EXTERN.h"/' \
	    -e 's/"perl.h"/"..\/perl.h"/' \
	    -e 's/my_exit/exit/' \
	    -e 's/MUTEX_[A-Z_]*(&PL_malloc_mutex);//'

# AUTOMATICALLY GENERATED MAKE DEPENDENCIES--PUT NOTHING BELOW THIS LINE
# If this runs make out of memory, delete /usr/include lines.
hash$(OBJ_EXT): ../config.h
hash$(OBJ_EXT): ../handy.h
hash$(OBJ_EXT): /usr/include/_ansi.h
hash$(OBJ_EXT): /usr/include/alloca.h
hash$(OBJ_EXT): /usr/include/bits/endian.h
hash$(OBJ_EXT): /usr/include/bits/wordsize.h
hash$(OBJ_EXT): /usr/include/byteswap.h
hash$(OBJ_EXT): /usr/include/ctype.h
hash$(OBJ_EXT): /usr/include/cygwin/config.h
hash$(OBJ_EXT): /usr/include/cygwin/signal.h
hash$(OBJ_EXT): /usr/include/cygwin/stdlib.h
hash$(OBJ_EXT): /usr/include/cygwin/time.h
hash$(OBJ_EXT): /usr/include/cygwin/types.h
hash$(OBJ_EXT): /usr/include/cygwin/wait.h
hash$(OBJ_EXT): /usr/include/endian.h
hash$(OBJ_EXT): /usr/include/inttypes.h
hash$(OBJ_EXT): /usr/include/machine/_default_types.h
hash$(OBJ_EXT): /usr/include/machine/_types.h
hash$(OBJ_EXT): /usr/include/machine/ieeefp.h
hash$(OBJ_EXT): /usr/include/machine/stdlib.h
hash$(OBJ_EXT): /usr/include/machine/time.h
hash$(OBJ_EXT): /usr/include/machine/types.h
hash$(OBJ_EXT): /usr/include/math.h
hash$(OBJ_EXT): /usr/include/newlib.h
hash$(OBJ_EXT): /usr/include/signal.h
hash$(OBJ_EXT): /usr/include/stdint.h
hash$(OBJ_EXT): /usr/include/stdio.h
hash$(OBJ_EXT): /usr/include/stdlib.h
hash$(OBJ_EXT): /usr/include/string.h
hash$(OBJ_EXT): /usr/include/sys/_intsup.h
hash$(OBJ_EXT): /usr/include/sys/_stdint.h
hash$(OBJ_EXT): /usr/include/sys/_timespec.h
hash$(OBJ_EXT): /usr/include/sys/_timeval.h
hash$(OBJ_EXT): /usr/include/sys/_types.h
hash$(OBJ_EXT): /usr/include/sys/cdefs.h
hash$(OBJ_EXT): /usr/include/sys/config.h
hash$(OBJ_EXT): /usr/include/sys/features.h
hash$(OBJ_EXT): /usr/include/sys/lock.h
hash$(OBJ_EXT): /usr/include/sys/reent.h
hash$(OBJ_EXT): /usr/include/sys/select.h
hash$(OBJ_EXT): /usr/include/sys/signal.h
hash$(OBJ_EXT): /usr/include/sys/stdio.h
hash$(OBJ_EXT): /usr/include/sys/string.h
hash$(OBJ_EXT): /usr/include/sys/sysmacros.h
hash$(OBJ_EXT): /usr/include/sys/time.h
hash$(OBJ_EXT): /usr/include/sys/times.h
hash$(OBJ_EXT): /usr/include/sys/timespec.h
hash$(OBJ_EXT): /usr/include/sys/types.h
hash$(OBJ_EXT): /usr/include/time.h
hash$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdarg.h
hash$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stddef.h
hash$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdint.h
hash$(OBJ_EXT): EXTERN.h
hash$(OBJ_EXT): a2p.h
hash$(OBJ_EXT): hash.c
hash$(OBJ_EXT): hash.h
hash$(OBJ_EXT): str.h
hash$(OBJ_EXT): util.h
hash$(OBJ_EXT): cflags
str$(OBJ_EXT): ../config.h
str$(OBJ_EXT): ../handy.h
str$(OBJ_EXT): /usr/include/_ansi.h
str$(OBJ_EXT): /usr/include/alloca.h
str$(OBJ_EXT): /usr/include/bits/endian.h
str$(OBJ_EXT): /usr/include/bits/wordsize.h
str$(OBJ_EXT): /usr/include/byteswap.h
str$(OBJ_EXT): /usr/include/ctype.h
str$(OBJ_EXT): /usr/include/cygwin/config.h
str$(OBJ_EXT): /usr/include/cygwin/signal.h
str$(OBJ_EXT): /usr/include/cygwin/stdlib.h
str$(OBJ_EXT): /usr/include/cygwin/time.h
str$(OBJ_EXT): /usr/include/cygwin/types.h
str$(OBJ_EXT): /usr/include/cygwin/wait.h
str$(OBJ_EXT): /usr/include/endian.h
str$(OBJ_EXT): /usr/include/inttypes.h
str$(OBJ_EXT): /usr/include/machine/_default_types.h
str$(OBJ_EXT): /usr/include/machine/_types.h
str$(OBJ_EXT): /usr/include/machine/ieeefp.h
str$(OBJ_EXT): /usr/include/machine/stdlib.h
str$(OBJ_EXT): /usr/include/machine/time.h
str$(OBJ_EXT): /usr/include/machine/types.h
str$(OBJ_EXT): /usr/include/math.h
str$(OBJ_EXT): /usr/include/newlib.h
str$(OBJ_EXT): /usr/include/signal.h
str$(OBJ_EXT): /usr/include/stdint.h
str$(OBJ_EXT): /usr/include/stdio.h
str$(OBJ_EXT): /usr/include/stdlib.h
str$(OBJ_EXT): /usr/include/string.h
str$(OBJ_EXT): /usr/include/sys/_intsup.h
str$(OBJ_EXT): /usr/include/sys/_stdint.h
str$(OBJ_EXT): /usr/include/sys/_timespec.h
str$(OBJ_EXT): /usr/include/sys/_timeval.h
str$(OBJ_EXT): /usr/include/sys/_types.h
str$(OBJ_EXT): /usr/include/sys/cdefs.h
str$(OBJ_EXT): /usr/include/sys/config.h
str$(OBJ_EXT): /usr/include/sys/features.h
str$(OBJ_EXT): /usr/include/sys/lock.h
str$(OBJ_EXT): /usr/include/sys/reent.h
str$(OBJ_EXT): /usr/include/sys/select.h
str$(OBJ_EXT): /usr/include/sys/signal.h
str$(OBJ_EXT): /usr/include/sys/stdio.h
str$(OBJ_EXT): /usr/include/sys/string.h
str$(OBJ_EXT): /usr/include/sys/sysmacros.h
str$(OBJ_EXT): /usr/include/sys/time.h
str$(OBJ_EXT): /usr/include/sys/times.h
str$(OBJ_EXT): /usr/include/sys/timespec.h
str$(OBJ_EXT): /usr/include/sys/types.h
str$(OBJ_EXT): /usr/include/time.h
str$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdarg.h
str$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stddef.h
str$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdint.h
str$(OBJ_EXT): EXTERN.h
str$(OBJ_EXT): a2p.h
str$(OBJ_EXT): hash.h
str$(OBJ_EXT): str.c
str$(OBJ_EXT): str.h
str$(OBJ_EXT): util.h
str$(OBJ_EXT): cflags
util$(OBJ_EXT): ../config.h
util$(OBJ_EXT): ../handy.h
util$(OBJ_EXT): /usr/include/_ansi.h
util$(OBJ_EXT): /usr/include/alloca.h
util$(OBJ_EXT): /usr/include/bits/endian.h
util$(OBJ_EXT): /usr/include/bits/wordsize.h
util$(OBJ_EXT): /usr/include/byteswap.h
util$(OBJ_EXT): /usr/include/ctype.h
util$(OBJ_EXT): /usr/include/cygwin/config.h
util$(OBJ_EXT): /usr/include/cygwin/signal.h
util$(OBJ_EXT): /usr/include/cygwin/stdlib.h
util$(OBJ_EXT): /usr/include/cygwin/time.h
util$(OBJ_EXT): /usr/include/cygwin/types.h
util$(OBJ_EXT): /usr/include/cygwin/wait.h
util$(OBJ_EXT): /usr/include/endian.h
util$(OBJ_EXT): /usr/include/inttypes.h
util$(OBJ_EXT): /usr/include/machine/_default_types.h
util$(OBJ_EXT): /usr/include/machine/_types.h
util$(OBJ_EXT): /usr/include/machine/ieeefp.h
util$(OBJ_EXT): /usr/include/machine/stdlib.h
util$(OBJ_EXT): /usr/include/machine/time.h
util$(OBJ_EXT): /usr/include/machine/types.h
util$(OBJ_EXT): /usr/include/math.h
util$(OBJ_EXT): /usr/include/newlib.h
util$(OBJ_EXT): /usr/include/signal.h
util$(OBJ_EXT): /usr/include/stdint.h
util$(OBJ_EXT): /usr/include/stdio.h
util$(OBJ_EXT): /usr/include/stdlib.h
util$(OBJ_EXT): /usr/include/string.h
util$(OBJ_EXT): /usr/include/sys/_intsup.h
util$(OBJ_EXT): /usr/include/sys/_stdint.h
util$(OBJ_EXT): /usr/include/sys/_timespec.h
util$(OBJ_EXT): /usr/include/sys/_timeval.h
util$(OBJ_EXT): /usr/include/sys/_types.h
util$(OBJ_EXT): /usr/include/sys/cdefs.h
util$(OBJ_EXT): /usr/include/sys/config.h
util$(OBJ_EXT): /usr/include/sys/features.h
util$(OBJ_EXT): /usr/include/sys/lock.h
util$(OBJ_EXT): /usr/include/sys/reent.h
util$(OBJ_EXT): /usr/include/sys/select.h
util$(OBJ_EXT): /usr/include/sys/signal.h
util$(OBJ_EXT): /usr/include/sys/stdio.h
util$(OBJ_EXT): /usr/include/sys/string.h
util$(OBJ_EXT): /usr/include/sys/sysmacros.h
util$(OBJ_EXT): /usr/include/sys/time.h
util$(OBJ_EXT): /usr/include/sys/times.h
util$(OBJ_EXT): /usr/include/sys/timespec.h
util$(OBJ_EXT): /usr/include/sys/types.h
util$(OBJ_EXT): /usr/include/time.h
util$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdarg.h
util$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stddef.h
util$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdint.h
util$(OBJ_EXT): EXTERN.h
util$(OBJ_EXT): INTERN.h
util$(OBJ_EXT): a2p.h
util$(OBJ_EXT): hash.h
util$(OBJ_EXT): str.h
util$(OBJ_EXT): util.c
util$(OBJ_EXT): util.h
util$(OBJ_EXT): cflags
walk$(OBJ_EXT): ../config.h
walk$(OBJ_EXT): ../handy.h
walk$(OBJ_EXT): /usr/include/_ansi.h
walk$(OBJ_EXT): /usr/include/alloca.h
walk$(OBJ_EXT): /usr/include/bits/endian.h
walk$(OBJ_EXT): /usr/include/bits/wordsize.h
walk$(OBJ_EXT): /usr/include/byteswap.h
walk$(OBJ_EXT): /usr/include/ctype.h
walk$(OBJ_EXT): /usr/include/cygwin/config.h
walk$(OBJ_EXT): /usr/include/cygwin/signal.h
walk$(OBJ_EXT): /usr/include/cygwin/stdlib.h
walk$(OBJ_EXT): /usr/include/cygwin/time.h
walk$(OBJ_EXT): /usr/include/cygwin/types.h
walk$(OBJ_EXT): /usr/include/cygwin/wait.h
walk$(OBJ_EXT): /usr/include/endian.h
walk$(OBJ_EXT): /usr/include/inttypes.h
walk$(OBJ_EXT): /usr/include/machine/_default_types.h
walk$(OBJ_EXT): /usr/include/machine/_types.h
walk$(OBJ_EXT): /usr/include/machine/ieeefp.h
walk$(OBJ_EXT): /usr/include/machine/stdlib.h
walk$(OBJ_EXT): /usr/include/machine/time.h
walk$(OBJ_EXT): /usr/include/machine/types.h
walk$(OBJ_EXT): /usr/include/math.h
walk$(OBJ_EXT): /usr/include/newlib.h
walk$(OBJ_EXT): /usr/include/signal.h
walk$(OBJ_EXT): /usr/include/stdint.h
walk$(OBJ_EXT): /usr/include/stdio.h
walk$(OBJ_EXT): /usr/include/stdlib.h
walk$(OBJ_EXT): /usr/include/string.h
walk$(OBJ_EXT): /usr/include/sys/_intsup.h
walk$(OBJ_EXT): /usr/include/sys/_stdint.h
walk$(OBJ_EXT): /usr/include/sys/_timespec.h
walk$(OBJ_EXT): /usr/include/sys/_timeval.h
walk$(OBJ_EXT): /usr/include/sys/_types.h
walk$(OBJ_EXT): /usr/include/sys/cdefs.h
walk$(OBJ_EXT): /usr/include/sys/config.h
walk$(OBJ_EXT): /usr/include/sys/features.h
walk$(OBJ_EXT): /usr/include/sys/lock.h
walk$(OBJ_EXT): /usr/include/sys/reent.h
walk$(OBJ_EXT): /usr/include/sys/select.h
walk$(OBJ_EXT): /usr/include/sys/signal.h
walk$(OBJ_EXT): /usr/include/sys/stdio.h
walk$(OBJ_EXT): /usr/include/sys/string.h
walk$(OBJ_EXT): /usr/include/sys/sysmacros.h
walk$(OBJ_EXT): /usr/include/sys/time.h
walk$(OBJ_EXT): /usr/include/sys/times.h
walk$(OBJ_EXT): /usr/include/sys/timespec.h
walk$(OBJ_EXT): /usr/include/sys/types.h
walk$(OBJ_EXT): /usr/include/time.h
walk$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdarg.h
walk$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stddef.h
walk$(OBJ_EXT): /usr/lib/gcc/i686-pc-cygwin/4.9.2/include/stdint.h
walk$(OBJ_EXT): EXTERN.h
walk$(OBJ_EXT): a2p.h
walk$(OBJ_EXT): hash.h
walk$(OBJ_EXT): str.h
walk$(OBJ_EXT): util.h
walk$(OBJ_EXT): walk.c
walk$(OBJ_EXT): cflags
cflags: cflags.SH ../config.sh ; /bin/sh cflags.SH
# WARNING: Put nothing here or make depend will gobble it up!
