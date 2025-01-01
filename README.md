# SonnyBash

Welcome to **SonnyBash**, a beginner-friendly `.bashrc` configuration tailored for Debian users. This configuration enhances the terminal experience with useful aliases, functions, and Python-specific optimizations.

## Features

- **Custom Prompt**: Displays username, hostname, and working directory with colors for better visibility.
- **Beginner-Friendly Aliases**: Shortcuts for common commands like `ls`, `cd`, and `rm`.
- **Python Optimizations**:
  - Auto-completion for Python scripts and modules.
  - Virtual environment helpers.
- **Archive Extraction Function**: Simplifies unzipping files of various formats.
- **Safety Enhancements**: Confirmation prompts for destructive commands (e.g., `rm`).
- **Helpful Login Messages**: Tips and system info displayed when the terminal starts.

---

## How to Use

### Download the `.bashrc` File
1. Clone the repository:
   ```bash
   git clone https://github.com/macg4dave/SonnyBash.git
   ```
2. Navigate to the project directory:
   ```bash
   cd SonnyBash
   ```
3. Copy the `.bashrc` file to your home directory:
   ```bash
   cp bashrc ~/.bashrc
   ```

### Activate the Configuration
Reload the terminal or source the `.bashrc` file:
```bash
source ~/.bashrc
```

---

## Editing the `.bashrc` File

### Common Edits
- Open the `.bashrc` file in a text editor:
  ```bash
  nano ~/.bashrc
  ```
- Modify the sections to add or update:
  - **Aliases**: Add shortcuts for frequently used commands.
  - **Functions**: Define custom scripts or utilities.
  - **Environment Variables**: Adjust paths or default settings.

### Save and Apply Changes
- Save the file (`Ctrl+O` in `nano`) and exit (`Ctrl+X`).
- Reload the terminal:
  ```bash
  source ~/.bashrc
  ```

---

## Customization Examples

### Add a New Alias
To create an alias for `clear` as `cls`:
```bash
alias cls='clear'
```

### Add a Python-Specific Feature
To create a helper function for running Python scripts:
```bash
runpy () {
    python3 "$1"
}
```

---

## Troubleshooting

- **Command Not Found**: Ensure the `.bashrc` file is loaded by running:
  ```bash
  source ~/.bashrc
  ```
- **Colors Not Working**: Install `ls` with color support:
  ```bash
  sudo apt-get install coreutils
  ```

---

## Contributing

Feel free to fork the repository and submit pull requests with improvements or bug fixes. Contributions are always welcome!

---

## License

This project is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).
