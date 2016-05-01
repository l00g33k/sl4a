cd ext/DynaLoader
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static PERL_ARCHLIB=../../xlib/arm OBJECT=DynaLoader.o CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static PERL_ARCHLIB=../../xlib/arm OBJECT=DynaLoader.o CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/B
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Cwd
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Data-Dumper
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Devel-PPPort
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Digest-MD5
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Digest-SHA
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Fcntl
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/File-Glob
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/IO
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/List-Util
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/POSIX
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Socket
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Sys-Hostname
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Time-HiRes
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a LINKTYPE=static CCCDLFLAGS= PERLRUN_CROSS=-MCross
fi
cd ../..
cd ext/Errno
if test ! -f Makefile -a -f Makefile.old; then
    echo "Note: Using Makefile.old"
    make -f Makefile.old realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a PERLRUN_CROSS=-MCross
else
    if test ! -f Makefile ; then
	echo "Warning: No Makefile!"
    fi
    make realclean MAKE='make' PERL_CORE=1 LIBPERL_A=libperl.a PERLRUN_CROSS=-MCross
fi
cd ../..
