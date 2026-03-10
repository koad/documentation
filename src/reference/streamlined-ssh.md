### **Streamline SSH with One-Word Commands for Remote Control**

Imagine commanding your remote machines effortlessly with simple, intuitive one-word commands. Inspired by Alice's journey to Wonderland, this method personalizes SSH interactions while maximizing efficiency. Here's how to set up your own system.

---

#### **Why This Approach Works**
1. **One-word commands**: Skip extra typing. `wonderland docker ps -a` instead of `ssh user@host docker ps -a`.
2. **Contextual personalization**: Assign meaningful names like `wonderland` (Alice's world) or `metro` (Astro’s domain).
3. **Effortless remote execution**: Pass commands seamlessly with `$@`, avoiding the need to start a full session.  


**Examples**

Open a normal interactive shell session.  
```bash
wonderland
```

Run commands remotely and return the results to your current terminal—without opening a new shell.  
```bash
wonderland docker ps -a
wonderland ls /home/koad
```


---

#### **The Setup**
Follow these steps to build your own SSH-based command system:

1. **Naming your Devices**
   - **Machine**: Think of each computer as a character’s "world." 
     - Example: *Alice resides in Wonderland, Astro runs things in Metro.*

[see: reference/you-name-it](/reference/you-name-it)  
[see: reference/passwordless-ssh](/reference/passwordless-ssh)  

2. **Define Wrapper Commands**
   Store simple functions to map machine names to SSH commands. Here’s how:

   ```bash
   # ~/.ssh_aliases

   wonderland() {
     ssh wonderland "$@"
   }
   ```

3. **Integrate the Aliases**
   Add this to your `.bashrc` or `.bash_profile`:
   ```bash
   if [ -f $HOME/.ssh_aliases ]; then
     source $HOME/.ssh_aliases
   fi
   ```

   Reload your shell:
   ```bash
   source ~/.bashrc
   ```

4. **Start Commanding Your Machines**
   - Run commands directly:
     ```bash
     wonderland docker ps -a
     metro ls /var/www
     ```
   - Open a shell session:
     ```bash
     wonderland
     metro
     ```

---

#### **How It Works**
- **Command Flexibility**: The `$@` passes arguments from your command line into the SSH session.
- **Dual Behavior**:
   - Without arguments: Opens an interactive shell session on the remote machine.
   - With arguments: Executes the command remotely and returns the output to your current terminal.
- **No Manual Tunnel Cleanup**: Run commands and return to your local shell without lingering sessions.

---

#### **Practical Benefits**
1. **Efficiency**: Manage multiple machines (`wonderland`, `metro`) without retyping SSH details.
2. **Customization**: Personalize your system for clarity and fun—name machines after themes you love!
3. **Scalability**: Add more functions as your network grows.

---

#### **Conclusion**
This system blends simplicity and power, transforming SSH from a tedious task into an intuitive, personalized tool. Whether you're managing containers in `wonderland` or deploying apps to `metro`, this method ensures seamless, efficient remote management.  

Use `wonderland` to open an interactive shell, or run `wonderland [command]` for instant task execution—Alice would approve! Dive into Wonderland today and take control of your remote machines with ease.

---


### bonus

bonus: [using a koad-io entity](/reference/koad-io/entity) > specify username and location of ssh key for passwordless login.  
 ```bash
 # ~/.ssh_aliases
 metro() {
   ssh -i $HOME/.astro/id/ed25519 -l astro metro "$@"
 }
 ```
command examples
```bash
  metro ls /home/astro
  metro ls /home/astro
```
or be super general, and instead use koad:io entity's ssh command to operate a machine that has more than one entity (human or koad:io) who uses it..
```bash
  alice ssh wonderland
  alice ssh wonderland ls /home/alice
  astro ssh metro
  astro ssh metro ls /home/astro
```
[see: reference/koad-io/entity](/reference/koad-io/entity)
