#! /bin/sh

SOURCE=Deb64STM.ova
PRE=DebSTM

[ -e $SOURCE ] && rm -f $SOURCE
touch $SOURCE
for A in a b c d e f g h i j k l m n o p q r s t u v w x y z ; do
for B in a b c d e f g h i j k l m n o p q r s t u v w x y z ; do
for C in a b c d e f g h i j k l m n o p q r s t u v w x y z ; do
  f=$A/$PRE$A$B$C
  [ ! -e $f ] && exit 0
  cat $f >> $SOURCE
done
done
done

