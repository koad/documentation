## Starship

The minimal, blazing-fast, and infinitely customizable prompt for any shell!

[starship.rs](https://starship.rs/)

Starship is not a bash prompt, but rather a highly customizable command-line shell prompt that can be used with various shells, including bash. It is designed to provide a sleek and informative prompt that displays relevant information about your current working environment.

Starship is written in Rust and is intended to be fast and lightweight. It can be configured to show various details, such as the current username, hostname, working directory, git branch and status, package version, and more. It supports a wide range of shells, including bash, zsh, fish, and PowerShell.

One of the advantages of Starship is its flexibility and ease of customization. It provides a simple configuration file that allows you to tweak the prompt's appearance and behavior according to your preferences. You can choose from a set of pre-defined modules or create your own custom modules to display specific information.

To use Starship with bash, you need to install it and then configure your bashrc (or bash_profile) file to load the Starship prompt. The official Starship documentation provides detailed instructions on how to install and set it up for different shells.

Overall, Starship is a popular choice among developers and power users who want an aesthetically pleasing and informative prompt for their command-line interface.


### Install starship

To install Starship, you can follow these general steps:

1. Check system requirements: Starship is compatible with macOS, Linux, and Windows. Make sure your operating system meets the requirements.

2. Install the required dependencies:
   - On macOS, you need to have Homebrew installed. If you don't have it, you can install it by following the instructions on the Homebrew website.
   - On Linux, you may need to install the `libssl-dev` package using your package manager.

3. Install Starship:
   - On macOS, open a terminal and run the following command using Homebrew:
     ```shell
     brew install starship
     ```

   - On Linux, open a terminal and run the following command:
     ```shell
     curl -fsSL https://starship.rs/install.sh | bash
     ```

   - On Windows, you can use the package manager Chocolatey or scoop. Open a PowerShell or Command Prompt window and run one of the following commands:
     ```shell
     choco install starship
     ```
     or
     ```shell
     scoop install starship
     ```

4. Configure your shell:
   - For bash, open your bashrc (or bash_profile) file in a text editor. This file is typically located in your home directory (`~/.bashrc` or `~/.bash_profile`).
   - Add the following line at the end of the file:
     ```shell
     eval "$(starship init bash)"
     ```
   - Save the file and close it.

5. Restart your shell or run the following command to apply the changes:
   ```shell
   source ~/.bashrc
   ```

After completing these steps, Starship should be installed and ready to use with your bash shell. You can further customize its appearance and behavior by editing the `~/.config/starship.toml` configuration file. The official Starship documentation provides more details on configuring and extending Starship for different shells.


### koad's starship.toml file

```toml
# ~/.config/starship.toml
format = """
$username\
$hostname\
$env_var\
$directory\
$vcsh\
$git_branch\
$git_commit\
$git_state\
$git_metrics\
$git_status\
$hg_branch\
$docker_context\
$package\
$buf\
$c\
$cmake\
$cobol\
$container\
$dart\
$deno\
$dotnet\
$elixir\
$elm\
$erlang\
$golang\
$haskell\
$helm\
$java\
$julia\
$kotlin\
$lua\
$nim\
$nodejs\
$ocaml\
$perl\
$php\
$pulumi\
$purescript\
$python\
$rlang\
$red\
$ruby\
$rust\
$scala\
$swift\
$terraform\
$vlang\
$vagrant\
$zig\
$nix_shell\
$conda\
$spack\
$memory_usage\
$aws\
$gcloud\
$openstack\
$azure\
$crystal\
$custom\
$sudo\
$cmd_duration\
$line_break\
$jobs\
$battery\
$time\
$status\
$shell\
$character"""

[username]
style_user = "bright-white bold"
style_root = "red bold"
format = "[$user]($style) [on](dimmed white) "
disabled = false
show_always = true

[hostname]
ssh_only = false
format = "[$hostname]($style) "
trim_at = "-"
style = "bold white"
disabled = false

[env_var]
variable = "ENTITY"
format = "([with ](dimmed white)[$env_value](bright-white bold)) "

[directory]
truncation_length = 8
truncation_symbol = "…/"
format = "[$path]($style)[$lock_symbol]($lock_style) "

[memory_usage]
# format = "$symbol[${ram}( | ${swap})]($style) "
format = "$symbol[${ram}]($style) "
show_percentage = true
show_swap = false
threshold = 50
style = "bold dimmed white"
disabled = false

[git_branch]
format = "[$symbol$branch]($style) "
symbol = "🍣 "
style = "bold yellow"

[git_commit]
commit_hash_length = 8
style = "bold white"

[git_state]
progress_divider = " of "

[git_status]
conflicted = "⚔️ "
ahead = "🏎️ 💨 ×${count}"
behind = "🐢 ×${count}"
diverged = "🔱 🏎️ 💨 ×${ahead_count} 🐢 ×${behind_count}"
untracked = "🛤️  ×${count}"
stashed = "📦 "
modified = "📝 ×${count}"
staged = "🗃️  ×${count}"
renamed = "📛 ×${count}"
deleted = "🗑️  ×${count}"
style = "bright-white"
format = "$all_status$ahead_behind"

[cmd_duration]
min_time = 10_000  # Show command duration over 10,000 milliseconds (=10 sec)
format = " took [$duration]($style)"

[battery]
full_symbol = "🔋"
charging_symbol = "🔌"
discharging_symbol = "⚡"

[[battery.display]]
threshold = 30
style = "bold red"

[julia]
format = "[$symbol$version]($style) "
symbol = "ஃ "
style = "bold green"

[package]
disabled = true

[python]
format = "[$symbol$version]($style) "
style = "bold green"

[jobs]
symbol = "+ "
style = "bright-white"
threshold = 4

[time]
time_format = "%y:%m:%d:%H:%M:%S"
format = "$time($style) "
style = "bold grey"
disabled = false

[character]
error_symbol = "[✖](bold red) "

```