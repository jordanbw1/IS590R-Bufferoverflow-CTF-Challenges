# Setup Instructions
To do the three CTF challenges, you need to be using Ubuntu. Ubuntu 18, 20, or 22 work best. You can do this inside of a Ubuntu VM, or a normal Ubuntu installation.

You need to install gcc on Ubuntu.
```bash
sudo apt update
sudo apt install gcc
```

To run each challenge, you will need to compile it using gcc
```bash
gcc <NameOfFile> -o <NameForExecutable>
```

Here is an example of how to do that command. If I were working on challenge 1, I would do the following (inside the directory with challenge 1)
```bash
gcc challenge1.s -o challenge1
```
You are now able to run the executable named `challenge1`.
```bash
./challenge1
```
At this point, you can type a string that will go into the program. It's up to you to figure out the rest ;).


<br/>
<br/>

# Compiling the Source yourself
You do not need to compile from the files in the Source folder. However, if you desire to know how to compile these files into the .s assembly files, this is the command you use:
```bash
gcc <filename>.c -fno-stack-protector -S -o <output name>.s -O0
```

<br/>

## What each argument does
| Argument    | Description |
| ---------   | --------    |
| -fno-stack-protector | This argument prevents the stack from using security functions that make buffer overflow attacks difficult to perform. |
| -S    | This flag compiles the `.c` file to assembly as a `.s` file.|
| -o   | This flag allows you to pick the name for the compiled file. |
| -O0  | This flag forces the compiler to use no optimizations, which makes the assembly file (`.s` file) easier to read.