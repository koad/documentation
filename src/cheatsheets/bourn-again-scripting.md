# Bash scripting cheatsheet

> Bash is the shell, or command language interpreter.  
> Bash is quite portable and currently runs on nearly every version of Unix and a few other operating systems - independently-supported ports exist for MS-DOS, OS/2, and Windows platforms.


---
## Shebang

The Shebang interpreter directive specifies the language that should be used to execute the script.  In bash programming, we specify `bash`.

If a shebang is not specified and the user running the Bash script is using another Shell the script will be parsed by whatever the default interpreter is used by that Shell. For example, the default interpreter for bash is bash and for zsh is sh. To ensure that your script will always be interpreted with Bash you’ll need to specify the executable path using shebang.

```
#!interpreter [arguments]
```

- The directive must be the first line in the script.
- The directive must start with shebang #!
- White space after the shebang characters is optional.
- Interpreter is the full path to a binary file (ex: /bin/sh, /bin/bash).
- Interpreter arguments are optional.

### examples

#### bash


specify `usr/bin/env` as the interpreter, and pass `bash` into it as an argument.
```bash
#!/usr/bin/env bash
```


full complete example used in a simple script.
```bash
#!/usr/bin/env bash

NAME="Bob"
echo "hi there $NAME!, Welcome to bash scripting!"
```

#### others

Use bash directly to parse the file, and assumes bash exists in `/bin/`.
```bash
#!/bin/bash
```

Use the env command to find the path to the perl executable.
```bash
#!/usr/bin/env perl
```

Execute the file using the python binary, and assumes bash exists in `/usr/bin/`.
```bash
#!/usr/bin/python
```

Use the koad:io shell within your home directory to parse the file and use $ENTITY.
```bash
#!~/.koad-io/bin/shell $ENTITY
```

Use the koad:io shell within your home directory to parse the file, but do not use an entity is `prime`.
```bash
#!~/.koad-io/bin/shell
```

---
## birds eye


### variables
```bash
NAME="John"
echo $NAME
echo "$NAME"
echo "${NAME}!"
```

### string quotes
```bash
NAME="John"
echo "Hi $NAME"  #=> Hi John
echo 'Hi $NAME'  #=> Hi $NAME
```

### shell execution
these two lines mean the same thing
```bash
echo "I'm in $(pwd)"
echo "I'm in `pwd`"
```

### conditional execution
```bash
git commit && git push
git commit || echo "Commit failed"
```

### functions
```bash
get_name() {
  echo "John"
}

echo "You are $(get_name)"
```

### conditionals
```bash
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi
```

### strict mode
```bash
set -euo pipefail
IFS=$'\n\t'
```

### brace expansion
```bash
echo {A,B}.js
{A,B}	Same as A B
{A,B}.js	Same as A.js B.js
{1..5}	Same as 1 2 3 4 5
```


---
## details

### parameter expansions

#### Basics

```bash
name="John"
echo ${name}
echo ${name/J/j}    #=> "john" (substitution)
echo ${name:0:2}    #=> "Jo" (slicing)
echo ${name::2}     #=> "Jo" (slicing)
echo ${name::-1}    #=> "Joh" (slicing)
echo ${name:(-1)}   #=> "n" (slicing from right)
echo ${name:(-2):1} #=> "h" (slicing from right)
echo ${food:-Cake}  #=> $food or "Cake"
```

```bash
name="John"
length=2
echo ${name:0:length}  #=> "Jo"
```

```bash
STR="/path/to/foo.cpp"
echo ${STR%.cpp}    # /path/to/foo
echo ${STR%.cpp}.o  # /path/to/foo.o
echo ${STR%/*}      # /path/to

echo ${STR##*.}     # cpp (extension)
echo ${STR##*/}     # foo.cpp (basepath)

echo ${STR#*/}      # path/to/foo.cpp
echo ${STR##*/}     # foo.cpp

echo ${STR/foo/bar} # /path/to/bar.cpp
STR="Hello world"
echo ${STR:6:5}   # "world"
echo ${STR: -5:5}  # "world"
SRC="/path/to/foo.cpp"
BASE=${SRC##*/}   #=> "foo.cpp" (basepath)
DIR=${SRC%$BASE}  #=> "/path/to/" (dirpath)

```

#### substitution
```bash
${FOO%suffix}	Remove suffix
${FOO#prefix}	Remove prefix
${FOO%%suffix}	Remove long suffix
${FOO##prefix}	Remove long prefix
${FOO/from/to}	Replace first match
${FOO//from/to}	Replace all
${FOO/%from/to}	Replace suffix
${FOO/#from/to}	Replace prefix
```

#### comments
```bash
# single line comment

: '
This is a
multi line
comment
'
```

#### substrings
```bash
${FOO:0:3}	Substring (position, length)
${FOO:(-3):3}	Substring from the right
```

#### length
```bash
${#FOO}	Length of $FOO
```

#### manipulation
```bash
STR="HELLO WORLD!"
echo ${STR,}   #=> "hELLO WORLD!" (lowercase 1st letter)
echo ${STR,,}  #=> "hello world!" (all lowercase)
```

```bash
STR="hello world!"
echo ${STR^}   #=> "Hello world!" (uppercase 1st letter)
echo ${STR^^}  #=> "HELLO WORLD!" (all uppercase)
```

#### Default values
```bash
${FOO:-val}	$FOO, or val if unset (or null)
${FOO:=val}	Set $FOO to val if unset (or null)
${FOO:+val}	val if $FOO is set (and not null)
${FOO:?message}	Show error message and exit if $FOO is unset (or null)
```
Omitting the : removes the (non)nullity checks, e.g. ${FOO-val} expands to val if unset otherwise $FOO.

### loops

#### basic for loop
```bash
for i in /etc/rc.*; do
  echo $i
done
```

#### c-like for loop
```bash
for ((i = 0 ; i < 100 ; i++)); do
  echo $i
done
```

#### ranges
```bash
for i in {1..5}; do
    echo "Welcome $i"
done
```

#### with step size
```bash
for i in {5..50..5}; do
    echo "Welcome $i"
done
```

#### reading lines
```bash
cat file.txt | while read line; do
  echo $line
done
```

#### forever
```
while true; do
  ···
done
```


### functions

#### defining functions
```bash
myfunc() {
    echo "hello $1"
}
```
Same as above (alternate syntax)
```bash
function myfunc() {
    echo "hello $1"
}
myfunc "John"
```

#### returning values
```bash
myfunc() {
    local myresult='some value'
    echo $myresult
}
result="$(myfunc)"
```

#### raising errors
```bash
myfunc() {
  return 1
}
```
```bash
if myfunc; then
  echo "success"
else
  echo "failure"
fi
```

#### arguments
```bash
$#	Number of arguments
$*	All positional arguments (as a single word)
$@	All positional arguments (as separate strings)
$1	First argument
$_	Last argument of the previous command
```
Note: $@ and $* must be quoted in order to perform as described. Otherwise, they do exactly the same thing (arguments as separate strings).
See Special parameters.


### conditionals

#### conditions

Note that [[ is actually a command/program that returns either 0 (true) or 1 (false). Any program that obeys the same logic (like all base utils, such as grep(1) or ping(1)) can be used as condition, see examples.

```bash
[[ -z STRING ]]	Empty string
[[ -n STRING ]]	Not empty string
[[ STRING == STRING ]]	Equal
[[ STRING != STRING ]]	Not Equal
[[ NUM -eq NUM ]]	Equal
[[ NUM -ne NUM ]]	Not equal
[[ NUM -lt NUM ]]	Less than
[[ NUM -le NUM ]]	Less than or equal
[[ NUM -gt NUM ]]	Greater than
[[ NUM -ge NUM ]]	Greater than or equal
[[ STRING =~ STRING ]]	Regexp
(( NUM < NUM ))	Numeric conditions
```
#### more conditions
```bash
[[ -o noclobber ]]	If OPTIONNAME is enabled
[[ ! EXPR ]]	Not
[[ X && Y ]]	And
[[ X || Y ]]	Or
```
#### file conditions
```bash
[[ -e FILE ]]	Exists
[[ -r FILE ]]	Readable
[[ -h FILE ]]	Symlink
[[ -d FILE ]]	Directory
[[ -w FILE ]]	Writable
[[ -s FILE ]]	Size is > 0 bytes
[[ -f FILE ]]	File
[[ -x FILE ]]	Executable
[[ FILE1 -nt FILE2 ]]	1 is more recent than 2
[[ FILE1 -ot FILE2 ]]	2 is more recent than 1
[[ FILE1 -ef FILE2 ]]	Same files
```
#### examples
##### string
```bash
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
else
  echo "This never happens"
fi
```
##### combinations
```bash
if [[ X && Y ]]; then
  ...
fi
```
##### equal
```bash
if [[ "$A" == "$B" ]]
```
##### regex
```bash
if [[ "A" =~ . ]]
if (( $a < $b )); then
   echo "$a is smaller than $b"
fi
```
##### exists

###### file
```bash
if [[ -e "file.txt" ]]; then
  echo "file exists"
fi
```

###### folder / directory
```bash
if [[ -d "$HOME/.koad-io/" ]]; then
  echo "directory exists"
fi
```

###### variable
check for non-null/non-zero string variable
```bash
if [ -n "$RANDOM_SAMPLE_VARIABLE" ]; then
  echo "RANDOM_SAMPLE_VARIABLE exists"
else
  echo "RANDOM_SAMPLE_VARIABLE does NOT exist"
fi
```
Note that `-n` is the default test, so more simply `[ "$1" ]` or `[[ $1 ]]` work as well


### Arrays

#### defining arrays
```bash
Fruits=('Apple' 'Banana' 'Orange')
Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"
```
#### working with arrays
```bash
echo ${Fruits[0]}           # Element #0
echo ${Fruits[-1]}          # Last element
echo ${Fruits[@]}           # All elements, space-separated
echo ${#Fruits[@]}          # Number of elements
echo ${#Fruits}             # String length of the 1st element
echo ${#Fruits[3]}          # String length of the Nth element
echo ${Fruits[@]:3:2}       # Range (from position 3, length 2)
echo ${!Fruits[@]}          # Keys of all elements, space-separated
```
#### operations
```bash
Fruits=("${Fruits[@]}" "Watermelon")    # Push
Fruits+=('Watermelon')                  # Also Push
Fruits=( ${Fruits[@]/Ap*/} )            # Remove by regex match
unset Fruits[2]                         # Remove one item
Fruits=("${Fruits[@]}")                 # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
lines=(`cat "logfile"`)                 # Read from file
```
#### iteration
```bash
for i in "${arrayName[@]}"; do
  echo $i
done
```

##### examples

removes the first element
```bash
array=(a b c d)
unset array[0]
```
```bash
array=(a b c d)
arrayWithFirstElementRemoved=("${array[@]:1}")
```

prints the array
```bash
array=(a b c d)
echo ${array[@]}
```
[ref](https://reactgo.com/bash-remove-first-element-of-array/)


prints last element in the array
```bash
array=(a b c d)
echo "${array[@]: -1:1}"
```
[ref](https://stackoverflow.com/questions/10586153/how-to-split-a-string-into-an-array-in-bash)





### Dictionaries

#### Defining
```bash
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"
```
Declares sound as a Dictionary object (aka associative array).

#### Working with dictionaries
```bash
echo ${sounds[dog]} # Dog's sound
echo ${sounds[@]}   # All values
echo ${!sounds[@]}  # All keys
echo ${#sounds[@]}  # Number of elements
unset sounds[dog]   # Delete dog
```

#### Iteration

##### Iterate over values
```bash
for val in "${sounds[@]}"; do
  echo $val
done
```

##### Iterate over keys
```bash
for key in "${!sounds[@]}"; do
  echo $key
done
```


### Options

#### Options
```bash
set -o noclobber  # Avoid overlay files (echo "hi" > foo)
set -o errexit    # Used to exit upon error, avoiding cascading errors
set -o pipefail   # Unveils hidden failures
set -o nounset    # Exposes unset variables
```

#### Glob options
```bash
shopt -s nullglob    # Non-matching globs are removed  ('*.foo' => '')
shopt -s failglob    # Non-matching globs throw errors
shopt -s nocaseglob  # Case insensitive globs
shopt -s dotglob     # Wildcards match dotfiles ("*.sh" => ".foo.sh")
shopt -s globstar    # Allow ** for recursive matches ('lib/**/*.rb' => 'lib/a/b/c.rb')
```
Set GLOBIGNORE as a colon-separated list of patterns to be removed from glob matches.


### History

#### Commands
```bash
history               #	Show history
shopt -s histverify   # Don’t execute expanded result immediately
```
#### Expansions
```bash
!$	Expand last parameter of most recent command
!*	Expand all parameters of most recent command
!-n	Expand nth most recent command
!n	Expand nth command in history
!<command>	Expand most recent invocation of command <command>
```

#### Operations
```bash
!!	Execute last command again
!!:s/<FROM>/<TO>/	Replace first occurrence of <FROM> to <TO> in most recent command
!!:gs/<FROM>/<TO>/	Replace all occurrences of <FROM> to <TO> in most recent command
!$:t	Expand only basename from last parameter of most recent command
!$:h	Expand only directory from last parameter of most recent command
!! and !$ can be replaced with any valid expansion.
```

#### Slices
```bash
!!:n	Expand only nth token from most recent command (command is 0; first argument is 1)
!^	Expand first argument from most recent command
!$	Expand last token from most recent command
!!:n-m	Expand range of tokens from most recent command
!!:n-$	Expand nth token to last from most recent command
!! can be replaced with any valid expansion i.e. !cat, !-2, !42, etc.
```

###  Miscellaneous

#### Numeric calculations
```bash
$((a + 200))      # Add 200 to $a
$(($RANDOM%200))  # Random number 0..199
```

#### Subshells
```bash
(cd somedir; echo "I'm now in $PWD")
pwd # still in first directory
```

#### Redirection
```bash
python hello.py > output.txt   # stdout to (file)
python hello.py >> output.txt  # stdout to (file), append
python hello.py 2> error.log   # stderr to (file)
python hello.py 2>&1           # stderr to stdout
python hello.py 2>/dev/null    # stderr to (null)
python hello.py &>/dev/null    # stdout and stderr to (null)
python hello.py < foo.txt      # feed foo.txt to stdin for python
diff <(ls -r) <(ls)            # Compare two stdout without files
```

#### Inspecting commands
```bash
command -V cd
#=> "cd is a shell builtin"
```
```bash
command -V alice
#=> "alice is /home/koad/.bin/alice"
```
```bash
command -V  htop
#=> "htop is /usr/bin/htop"
```

#### Trap errors
```bash
trap 'echo Error at about $LINENO' ERR
```
```bash
traperr() {
  echo "ERROR: ${BASH_SOURCE[1]} at about ${BASH_LINENO[0]}"
}

set -o errtrace
trap traperr ERR
Case/switch
case "$1" in
  start | up)
    vagrant up
    ;;

  *)
    echo "Usage: $0 {start|stop|ssh}"
    ;;
esac
```

#### source relative
```bash
source "${0%/*}/../share/foo.sh"
printf
printf "Hello %s, I'm %s" Sven Olga
#=> "Hello Sven, I'm Olga

printf "1 + 1 = %d" 2
#=> "1 + 1 = 2"

printf "This is how you print a float: %f" 2
#=> "This is how you print a float: 2.000000"
```

#### transform strings
-c	Operations apply to characters not in the given set
-d	Delete characters
-s	Replaces repeated characters with single occurrence
-t	Truncates

[:upper:]	All upper case letters
[:lower:]	All lower case letters
[:digit:]	All digits
[:space:]	All whitespace
[:alpha:]	All letters
[:alnum:]	All letters and digits

##### example
```bash
echo "Welcome To Devhints" | tr [:lower:] [:upper:]
WELCOME TO DEVHINTS
```

##### directory of script
```bash
DIR="${0%/*}"
```

#### getting options
```bash
while [[ "$1" =~ ^- && ! "$1" == "--" ]]; do case $1 in
  -V | --version )
    echo $version
    exit
    ;;
  -s | --string )
    shift; string=$1
    ;;
  -f | --flag )
    flag=1
    ;;
esac; shift; done
if [[ "$1" == '--' ]]; then shift; fi
Heredoc
cat <<END
hello world
END
```

#### reading input
```bash
echo -n "Proceed? [y/n]: "
read ans
echo $ans
read -n 1 ans    # Just one character
```

#### special variables
```bash
$?	Exit status of last task
$!	PID of last background task
$$	PID of shell
$0	Filename of the shell script
$_	Last argument of the previous command
```

#### go to previous directory
```bash
pwd # /home/user/foo
cd bar/
pwd # /home/user/foo/bar
cd -
pwd # /home/user/foo
```

#### check for command’s result
```bash
if ping -c 1 google.com; then
  echo "It appears you have a working internet connection"
fi
```

#### grep check
```bash
if grep -q 'foo' ~/.bash_history; then
  echo "You appear to have typed 'foo' in the past"
fi
```

#### timer
```bash
#!/bin/bash

start=$(date +%s)
#
# do something
sleep 10
#
#
end=$(date +%s)

seconds=$(echo "$end - $start" | bc)
echo $seconds' sec'

echo 'Formatted:'
awk -v t=$seconds 'BEGIN{t=int(t*1000); printf "%d:%02d:%02d\n", t/3600000, t/60000%60, t/1000%60}'
```


---
## reference
- [https://devhints.io/bash](https://devhints.io/bash)
- [https://linuxize.com/post/bash-shebang/](https://linuxize.com/post/bash-shebang/)
- [https://www.gnu.org/software/bash/manual/html_node/What-is-Bash_003f.html](https://www.gnu.org/software/bash/manual/html_node/What-is-Bash_003f.html)
- [parameter expansions](http://wiki.bash-hackers.org/syntax/pe)
