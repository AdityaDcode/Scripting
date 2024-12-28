
# Shell Scripting Basics  

This guide covers the fundamentals of shell scripting, including scripting vs. programming, types of shells, variables, and various operations.

---

## **Scripting vs. Programming**  

### **Scripting**  
- Automates specific tasks.  
- No compilation required; uses an interpreter.  
- Does not need customized environments/setup for development.  

### **Programming**  
- A program can handle multiple tasks.  
- Requires compilation to execute.  
- Needs customized environments for development and compilation.  

---

## **What is Shell Scripting?**  
Shell scripting involves a sequence of commands bundled in a single file for execution.  

### **Example Shell Script**  
```bash
#!/bin/bash
# Sample shell script
mkdir /createdbyscript
touch /createdbyscript/testfile.txt
echo "Testing Script file" > /createdbyscript/testfile.txt
```
This creates a folder `createdbyscript`, adds a file `testfile.txt`, and writes "Testing Script file" into it.  
- Used to automate general tasks.  

---

## **Types of Shells**  

### **What is a Shell?**  
A shell is a program that connects the user interface to the kernel, passing user inputs to the kernel.  

### **List Available Shells in Linux**  
```bash
cat /etc/shells
```

### **Common Shells**  
1. `sh`  
2. `bash`  
3. `zsh`  
4. `dash`  
5. `nologin`, etc.

Switch to a specific shell using its path, e.g., `/bin/sh`.

---

## **Shell Script Template**  
Use this template to create scripts:  
```bash
#!/bin/bash
# Enable debug mode
set -x

# Prompt for filename
echo -e "Enter the filename to create: \c"
read -r file

# Ensure ~/scripts directory exists
mkdir -p "$HOME/scripts"

# Create the script file
{
    echo '#!/bin/bash'
    echo '#Purpose:'
    echo '#Version:'
    echo "#Created Date: $(date)"
    echo '#Modified Date:'
    echo '#Author: Aditya'
    echo '# Start #'
    echo '# END #'
} > "$HOME/scripts/$file.sh"

# Make the file executable
chmod +x "$HOME/scripts/$file.sh"
echo "File created at $HOME/scripts/$file.sh"
```

Ensure the `~/scripts/` folder exists.

---

## **Single vs. Double Quotes**  
### **Differences**  
- **Single Quotes:** Do not allow variable substitution.  
- **Double Quotes:** Allow variable substitution.  

```bash
#!/bin/bash
VAR1=123456
TEST1=Aditya

echo "Double quotes: $VAR1 $TEST1"
echo 'Single quotes: $VAR1 $TEST1'
echo "Hostname: $(hostname)"
```

---

## **Variables**  
Variables store values and can change during script execution.  

### **Rules for Defining Variables**  
- Hyphens (`-`) are not allowed.  
- Variables must start with a letter.  

```bash
#!/bin/bash
A=10
B=20
HOST=$(hostname)
DATE=$(date)

echo "A: $A, B: $B"
echo "Host: $HOST, Date: $DATE"
```

---

## **Special Variables**  

| Variable | Description |
|----------|-------------|
| `$*`      | All positional parameters as a single string. |
| `$#`      | Number of arguments passed. |
| `$0`      | Name of the script. |
| `$1, $2`  | First and second arguments. |
| `$@`      | All positional parameters as separate strings. |
| `$?`      | Exit status of the last command. |
| `$$`      | PID of the script itself. |
