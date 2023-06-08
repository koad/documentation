## Ubuntu Minimal with Cairo-Dock


Since Ubuntu Minimal allows you to install only the essential components and build your own custom environment, it provides the flexibility to install and configure Cairo-Dock alongside GNOME.

To install Cairo-Dock on Ubuntu, you can use the following command in the terminal:

```bash
sudo apt-get install cairo-dock
```

Once the installation is complete, you can launch Cairo-Dock from the applications menu or by running the command `cairo-dock` in the terminal.


### run on startup

To make Cairo-Dock run on startup in Ubuntu with the GNOME desktop environment, you can follow these steps:

1. Open the GNOME Startup Applications preferences. You can do this by pressing the Super key (Windows key) and searching for "Startup Applications" or by navigating to "Applications" -> "Startup Applications" in the top bar.

2. In the Startup Applications window, click on the "Add" button to create a new startup entry.

3. In the "Add Startup Program" dialog, enter the following information:
   - Name: Cairo-Dock (or any name you prefer)
   - Command: cairo-dock
   - Comment: Optional description (e.g., "Custom dock interface")

4. Click "Add" to add the Cairo-Dock startup entry.

5. Close the Startup Applications window.

Now, Cairo-Dock should automatically start up every time you log into your Ubuntu system. Restart your computer or log out and log back in to see Cairo-Dock launching on startup.

If you want to customize the behavior of Cairo-Dock during startup, you can also modify the command in the "Command" field. For example, you can use `cairo-dock -o` to start Cairo-Dock in auto-hide mode or `cairo-dock -c` to start it in the minimized mode.

Remember to save any changes you make in the Startup Applications preferences for them to take effect.


## launching sandboxed browsers

To add a custom launcher with a custom icon that launches Chromium with a specific data directory in Cairo-Dock, you can follow these steps:

1. Create a Desktop Entry file for your custom launcher. Open a text editor and create a new file with the `.desktop` extension, such as `chromium-custom.desktop`.

2. Open the `.desktop` file in the text editor and add the following content:

   ```
   [Desktop Entry]
   Version=1.0
   Name=Chromium Custom
   Comment=Custom Launcher for Chromium
   Exec=/usr/bin/chromium --user-data-dir=/path/to/custom/directory
   Icon=/path/to/custom/icon.png
   Terminal=false
   Type=Application
   Categories=Network;WebBrowser;
   ```

   Make sure to replace `/path/to/custom/directory` with the actual path to the custom data directory you want to use for Chromium. Also, replace `/path/to/custom/icon.png` with the actual path to your custom icon image file.

3. Save the file and exit the text editor.

4. Move the `.desktop` file to the appropriate directory where Cairo-Dock looks for launcher files. Typically, you can place it in the `~/.local/share/applications/` directory:

   ```
   mv chromium-custom.desktop ~/.local/share/applications/
   ```

5. Now, the custom launcher should be available in the application menu. You can search for "Chromium Custom" or browse the appropriate category to find it.

6. To add the launcher to Cairo-Dock, you can simply drag and drop it from the application menu to Cairo-Dock. It should create a shortcut for the custom launcher on the dock.

When you click on the custom launcher in Cairo-Dock, it will launch Chromium using the specified data directory and display the custom icon you provided.

Note that you need to have Chromium installed on your system for this to work. Additionally, make sure that the custom data directory you specify exists and has the necessary permissions.


## deeper

You can turn the `~/.local/share/applications/` folder into a repository and sync it among multiple Ubuntu installations using version control systems like Git. Here's a general outline of the steps you can follow:

1. Set up a Git repository: Initialize a new Git repository in the `~/.local/share/applications/` folder of one Ubuntu installation. Run the following commands in the terminal:

   ```
   cd ~/.local/share/applications/
   git init
   ```

2. Add and commit files: Add the existing `.desktop` files to the repository and commit the changes:

   ```
   git add .
   git commit -m "Initial commit"
   ```

3. Configure remote repository: Set up a remote repository on a Git hosting service like GitHub, GitLab, or Bitbucket. Follow the documentation of the chosen service to create a new repository.

4. Add remote repository: Add the remote repository URL to your local Git configuration:

   ```
   git remote add origin <remote-repo-url>
   ```

5. Push to remote repository: Push the local repository to the remote repository:

   ```
   git push -u origin master
   ```

6. Clone on other Ubuntu installations: On other Ubuntu installations where you want to sync the `.desktop` files, clone the remote repository:

   ```
   git clone <remote-repo-url> ~/.local/share/applications/
   ```

   This will create a local copy of the repository in the `~/.local/share/applications/` folder.

7. Sync changes: Whenever you make changes to the `.desktop` files on any Ubuntu installation, navigate to the `~/.local/share/applications/` folder, commit the changes using Git, and push them to the remote repository:

   ```
   cd ~/.local/share/applications/
   git add .
   git commit -m "Update files"
   git push
   ```

8. Pull changes on other installations: On the other Ubuntu installations where you have cloned the repository, you can pull the latest changes:

   ```
   cd ~/.local/share/applications/
   git pull
   ```

   This will update the `.desktop` files with the latest changes from the remote repository.

By following these steps, you can effectively sync the `.desktop` files among multiple Ubuntu installations using a Git repository. This allows you to maintain a centralized location for the files and easily propagate changes across your systems.


## deeper still

You can use Keybase for syncing the `~/.local/share/applications/` folder among multiple Ubuntu installations using its private git features. Keybase provides a secure and encrypted platform for sharing and syncing files.

Here's how you can use Keybase with Git for syncing the folder:

1. Install Keybase: If you haven't already, install Keybase on all the Ubuntu installations where you want to sync the folder. You can download Keybase from the official website and follow the installation instructions.

2. Set up a Keybase team: Create a Keybase team or use an existing one that you want to use for syncing the folder. A team provides a secure and private space for collaboration.

3. Initialize a Git repository: In the `~/.local/share/applications/` folder of one Ubuntu installation, initialize a new Git repository. Open a terminal and navigate to the folder:

   ```
   cd ~/.local/share/applications/
   git init
   ```

4. Add and commit files: Add the existing `.desktop` files to the repository and commit the changes:

   ```
   git add .
   git commit -m "Initial commit"
   ```

5. Configure remote repository: Set up a remote repository within your Keybase team. Use the following command, replacing `teamname` with your Keybase team name:

   ```
   git remote add origin keybase://team/teamname/repo
   ```

6. Push to remote repository: Push the local repository to the remote Keybase repository:

   ```
   git push -u origin master
   ```

7. Clone on other Ubuntu installations: On the other Ubuntu installations where you want to sync the `.desktop` files, clone the remote repository. Open a terminal and run the following command:

   ```
   git clone keybase://team/teamname/repo ~/.local/share/applications/
   ```

   This will create a local copy of the repository in the `~/.local/share/applications/` folder.

8. Sync changes: Whenever you make changes to the `.desktop` files on any Ubuntu installation, navigate to the `~/.local/share/applications/` folder, commit the changes using Git, and push them to the remote Keybase repository:

   ```
   cd ~/.local/share/applications/
   git add .
   git commit -m "Update files"
   git push
   ```

9. Pull changes on other installations: On the other Ubuntu installations where you have cloned the repository, you can pull the latest changes:

   ```
   cd ~/.local/share/applications/
   git pull
   ```

   This will update the `.desktop` files with the latest changes from the remote Keybase repository.

By following these steps, you can use Keybase with Git to securely sync the `~/.local/share/applications/` folder among multiple Ubuntu installations within your Keybase team. Keybase's encryption and security features ensure the privacy of your synced files.


## as deep as it gets

Creating separate Keybase user accounts for each of your devices and bringing them into relevant teams can be a good practice to maintain organization and control over your synced files. It allows you to have individual accounts for each device while still being able to collaborate within teams.

Here's a suggested approach for using Keybase with multiple devices and teams:

1. Create a primary Keybase account: Create a primary Keybase account that will serve as the main account for managing the teams and repositories. This account can be used to create and administer teams, as well as manage access and permissions.

2. Create individual Keybase accounts for devices: Create separate Keybase user accounts for each of your devices. This will allow you to have distinct identities for each device.

3. Join relevant teams: Join the relevant teams using each device's Keybase account. Determine which teams should have access to the synced files and add the corresponding device accounts to those teams.

4. Set up repositories: Create repositories within the teams for syncing the `~/.local/share/applications/` folder. You can create separate repositories for each team or organize them based on your specific needs.

5. Clone repositories on devices: On each device, use the corresponding Keybase account to clone the relevant repositories into the `~/.local/share/applications/` folder.

6. Sync changes: Make changes to the `.desktop` files on each device as needed. Commit and push the changes to the respective repositories using the device's Keybase account.

7. Manage permissions and access: As the administrator of the teams, you can manage permissions and access to the repositories. You can control who has read and write access to the repositories, ensuring appropriate collaboration and security.

By following this approach, you can have separate Keybase user accounts for each device, bring them into relevant teams, and manage access to the repositories. This allows for effective collaboration and synchronization while maintaining control over your files.


