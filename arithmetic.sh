# !/bin/sh

# ----------------------- Mathematical Operations ---------------------------------
: '
- Addition: +
- Subtraction: -
- Multiplication: * (Needs char spacing \)
- Division: / (Needs char spacing \)
- Modulus: % (Needs char spacing with \)
- Some of the operational symols needs char spacing so use \.
- General Syntax: echo `expr $var1 + $var2` (Strict spacing for integer)
- For folating point: echo $var1 + var2 | bc
'

# Integer Operations
a=5
b=2
echo expr $a + $b # OUtput: expr 5 + 2
echo `expr $a + $b` # OUtput: 7
echo `expr $a - $b` # OUtput: 2
echo `expr $a \* $b` # OUtput: 10 (Needs char spacing)
echo `expr $a \/ $b` # OUtput: 2 (Needs char spacing)
echo `expr $a \% $b` # OUtput: 1 (Needs char spacing)


# Folating point operation
: '
- Unix command doesnt supports folating points by default.
- So, use | bc command for folating point operation
'
a=2.2
b=1.5
echo $a + $b | bc
echo $a - $b | bc
echo $a \* $b | bc
echo $a \/ $b | bc
# ----------------------- Mathematical Operations ---------------------------------



# ----------------------- Logical Operations --------------------------------------
: '
- NOT: !
- AND: -a
- OR: -o
'

# File Operators
: '

=>  -a filename	
    True if the file exists; it can be empty or have some content but,
    so long as it exists, this will be true

=> -b filename	
    True if the file exists and is a block special file such as a hard
    drive like /dev/sda or /dev/sda1

=> -c filename	
    True if the file exists and is a character special file such as a 
    TTY device like /dev/TTY1

=> -d filename	
    True if the file exists and is a directory

=> -e filename	
    True if the file exists; this is the same as -a above

=> -f filename	
    True if the file exists and is a regular file, as opposed to a 
    directory, a device special file, or a link, among others

=> -g filename	
    True if the file exists and is set-group-id, SETGID

=> -h filename	
    True if the file exists and is a symbolic link

=> -k filename	
    True if the file exists and its "sticky'" bit is set

=> -p filename	
    True if the file exists and is a named pipe (FIFO)

=> -r filename	
    True if the file exists and is readable, i.e., has its read bit set

=> -s filename	
    True if the file exists and has a size greater than zero; 
    a file that exists but that has a size of zero will return false

# More at: https://opensource.com/article/19/10/programming-bash-logical-operators-shell-expansions
'
# ----------------------- Logical Operations --------------------------------------