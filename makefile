#
# For version 6 don't make
#	from last ls mkstr msgs reset strings tset whereis xstr
# unless you are sure they will work as well or better than the versions
# in upgrade.  Also redefine
#	CFLAGS=	-I/usr/include/retrofit -O
#	LIBS=	-ltermlib -lretro -lS -s
# For version 7:
#	CFLAGS=	-O
#	LIBS=	-ltermlib -s
#
CFLAGS=	-O
LIBS=	-ltermlib -s

v7:	v6 from last ls mkstr msgs printenv reset saveboottime strings tset

v6:	apropos astags chessclock ckdir clear clock cr3 ctags\
	cxref daytime diffdir double dribble expand finger\
	fleece fold funny getNAME gets grep head\
	iul lock makefile makewhatis man\
	num print see\
	soelim ssp tod tra untmp\
	w whatis whoami xstr

apropos:
	${CC} ${CFLAGS} apropos.c ${LIBS}
	cp a.out /usr/ucb/apropos

astags:
	cp astags.sh /usr/ucb/astags

chessclock:
	${CC} ${CFLAGS} chessclock.c ${LIBS}
	cp a.out /usr/ucb/chessclock

ckdir:
	${CC} ${CFLAGS} ckdir.c ${LIBS}
	cp a.out /usr/ucb/ckdir

clear:
	${CC} ${CFLAGS} clear.c ${LIBS}
	cp a.out /usr/ucb/clear

clock:
	${CC} ${CFLAGS} clock.c ${LIBS}
	cp a.out /usr/ucb/clock

cr3:
	${CC} ${CFLAGS} cr3.c ${LIBS}
	cp a.out /usr/ucb/cr3

ctags:
	cp ctags.sh /usr/ucb/ctags

cxref:
	cp cxref.sh /usr/ucb/cxref

daytime:
	${CC} ${CFLAGS} daytime.c ${LIBS}
	cp a.out /usr/ucb/daytime

diffdir:
	${CC} ${CFLAGS} diffdir.c ${LIBS}
	cp a.out /usr/ucb/diffdir

double:
	${CC} ${CFLAGS} double.c ${LIBS}
	cp a.out /usr/ucb/double

dribble:
	${CC} ${CFLAGS} dribble.c ${LIBS}
	cp a.out /usr/ucb/dribble

expand:
	${CC} ${CFLAGS} expand.c ${LIBS}
	cp a.out /usr/ucb/expand

finger:
	${CC} ${CFLAGS} finger.c ${LIBS}
	cp a.out /usr/ucb/finger

fleece:
	${CC} ${CFLAGS} fleece.c ${LIBS}
	cp a.out /usr/ucb/fleece

fold:
	${CC} ${CFLAGS} fold.c ${LIBS}
	cp a.out /usr/ucb/fold

from:
	${CC} ${CFLAGS} from.c ${LIBS}
	cp a.out /usr/ucb/from

funny:
	${CC} ${CFLAGS} funny.c ${LIBS}
	cp a.out /usr/ucb/funny

getNAME:
	${CC} ${CFLAGS} getNAME.c ${LIBS}
	cp a.out /usr/ucb/getNAME

gets:
	${CC} ${CFLAGS} gets.c ${LIBS}
	cp a.out /usr/ucb/gets

grep:
	${CC} ${CFLAGS} grep.c ${LIBS}
	cp a.out /usr/ucb/grep

head:
	${CC} ${CFLAGS} head.c ${LIBS}
	cp a.out /usr/ucb/head

iul:
	${CC} ${CFLAGS} iul.c ${LIBS}
	cp a.out /usr/ucb/iul

last:
	${CC} ${CFLAGS} last.c ${LIBS}
	cp a.out /usr/ucb/last

lock:
	${CC} ${CFLAGS} lock.c ${LIBS}
	cp a.out /usr/ucb/lock

ls:
	${CC} ${CFLAGS} ls.c ${LIBS}
	cp a.out /usr/ucb/ls

makewhatis:
	cp makewhatis.sh /usr/ucb/makewhatis

man:
	${CC} ${CFLAGS} man.c ${LIBS}
	cp a.out /usr/ucb/man

mkstr:
	${CC} ${CFLAGS} mkstr.c ${LIBS}
	cp a.out /usr/ucb/mkstr

msgs:
	${CC} ${CFLAGS} msgs.c ${LIBS}
	cp a.out /usr/ucb/msgs

num:
	${CC} ${CFLAGS} num.c ${LIBS}
	cp a.out /usr/ucb/num

print:
	cp print.sh /usr/ucb/print

printenv:
	${CC} ${CFLAGS} printenv.c ${LIBS}
	cp a.out /usr/ucb/printenv

reset:
	${CC} ${CFLAGS} reset.c ${LIBS}
	cp a.out /usr/ucb/reset

saveboottime:
	${CC} ${CFLAGS} saveboottime.c ${LIBS}
	cp a.out /usr/ucb/saveboottime

see:
	${CC} ${CFLAGS} see.c ${LIBS}
	cp a.out /usr/ucb/see

soelim:
	${CC} ${CFLAGS} soelim.c ${LIBS}
	cp a.out /usr/ucb/soelim

ssp:
	${CC} ${CFLAGS} ssp.c ${LIBS}
	cp a.out /usr/ucb/ssp

strings:
	${CC} ${CFLAGS} strings.c ${LIBS}
	cp a.out /usr/ucb/strings

tod:
	${CC} ${CFLAGS} tod.c ${LIBS}
	cp a.out /usr/ucb/tod

tra:
	${CC} ${CFLAGS} tra.c ${LIBS}
	cp a.out /usr/ucb/tra

tset:
	${CC} ${CFLAGS} tset.c ${LIBS}
	cp a.out /usr/ucb/tset

untmp:
	${CC} ${CFLAGS} untmp.c ${LIBS}
	cp a.out /usr/ucb/untmp

w:
	cp w.sh /usr/ucb/w

whatis:
	${CC} ${CFLAGS} whatis.c ${LIBS}
	cp a.out /usr/ucb/whatis

whereis:
	${CC} ${CFLAGS} whereis.c ${LIBS}
	cp a.out /usr/ucb/whereis

whoami:
	${CC} ${CFLAGS} whoami.c ${LIBS}
	cp a.out /usr/ucb/whoami

xstr:
	${CC} ${CFLAGS} xstr.c ${LIBS}
	cp a.out /usr/ucb/xstr

clean:
	-rm -f *.o
	-rm -f a.out
