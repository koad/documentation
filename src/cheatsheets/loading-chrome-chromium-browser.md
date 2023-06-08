# Chromium Command Line Flags Cheatsheet

Below are some commonly used command line flags for launching Chromium. These flags can be appended to the `chromium-browser` command to modify its behavior.

## User Data Directory Flags

- `--user-data-dir=/path/to/data/dir`: Specifies the directory where Chromium should store user data, such as profiles, cache, and settings.

## Welcome Message Flags

- `--no-first-run`: Disables the welcome message that appears when Chromium is launched for the first time.

## Certificate Flags

- `--ignore-certificate-errors`: Ignores certificate errors, including self-signed certificates. Use with caution as it can expose you to security risks.

## Proxy Flags

- `--proxy-server=host:port`: Sets the proxy server to be used by Chromium. Replace `host` with the proxy server's hostname or IP address and `port` with the corresponding port number.

## Incognito Mode Flag

- `--incognito`: Launches Chromium in incognito mode, which prevents browsing history and cookies from being saved.

## Fullscreen Mode Flag

- `--start-fullscreen`: Starts Chromium in fullscreen mode, occupying the entire screen.

## Disable GPU Flags

- `--disable-gpu`: Disables hardware acceleration and uses software rendering for graphics.

- `--disable-gpu-compositing`: Disables GPU compositing for improved performance on systems with limited GPU capabilities.

## URL to Open Flag

- `URL`: You can directly specify a URL as an argument without any flag to open it in Chromium.

Remember to adjust the command based on your specific needs, operating system, and Chromium version.

