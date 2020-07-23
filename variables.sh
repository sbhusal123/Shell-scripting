# !/bin/sh

#-------------------- Defining variables ---------------------------------------
: '
- Values can be assigned using "=" operator.
- If a variable is string and has spaces, wrap it around "" i.e "<value>"
- Caution: Not to use space around = while defining variables.
'
number=1
string="Hello,"
#-------------------- Defining variables ---------------------------------------



#--------------------Accessing a variable---------------------------------------
: '
- Can be accessed using $ i.e $<variable_name>
- echo command is used to print the output on the screen.
- When storing string variable in a string i.e inside "", $ can be used.
'
echo $number # Output: 1
echo "$string there"  # Output: Hello, there
echo $string there!   # Output: Hello, there
echo $number there!   # Output: 1 there
#--------------------Accessing a variable---------------------------------------


# ------------------- Environment Variables-------------------------------------
: '
- Visible to child processes of shell program.
- $PATH -> Set of path to search for command
- $HOME -> Current user home
'
echo  $PATH # Set of path to search for command
echo $HOME # Current user home
# ------------------- Environment Variables-------------------------------------



# ------------------- User Defined Variables -----------------------------------
: '
- Explicitly defined by user.
- Visible to current instance of the shell.
- Differs from local variable.
- defined using "export <varname>=<value>"
'
export config="Users/bin/exec"
echo $config # Output: Users/bin/exec
# ------------------- User Defined Variables -----------------------------------



#-------------------- Other Special Variables ----------------------------------
: '
- $0 -> The name of bash script
- $# -> Arguments passed to bash script. Usage: ./filename.sh arg1 arg2 ...
- $# -> No of argument passed to bash script.
- $@ -> All arguments passed.
- $? -> Exit status of most recently runing process.
- $USER -> Current user executing the command.
- $SECONDS -> No of seconds since the script started.
- $RANDOM -> Returns a different random number
'
echo $0  # Output: ./variables.sh (Name of this file)

# Arguments variables
echo $1  # If ./filename.sh arg1 arg2, Output: arg1
echo $#  # If ./filename.sh arg1 arg2, Output: 2 (2 arg passed)
echo $@  # If ./filename.sh arg1 arg2, Output: arg1 arg2

# Others
echo $? # Output: 0 (Exited successfuly)
echo $USER # Output: surya (Current user)
echo $SECONDS # OUtput: 0
echo $RANDOM # Output: Random no each time
echo $LINENO # Output: 76 (Current line no)
#-------------------- Other Special Variables ----------------------------------