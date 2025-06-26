# Clone with `.gitignore` Auto-Creation, Commit & Push

This simple script helps you clone a GitHub repository and automatically:

1. Checks if a `.gitignore` file exists.
2. If not, creates a new one that excludes `.DS_Store`.
3. Commits and pushes the new `.gitignore` file to the repository.

## 🛠 Requirements

- `git` must be installed.
- You must have push access to the repository (via SSH or HTTPS with credentials/token).

## 📦 How to Use

1. Save the script as `macos_clone.sh`.

2. Make it executable:

   ```bash
   chmod +x macos_clone.sh
   ```

3. In your terminal, navigate to the folder where you want to clone the repo.

4. Run the script with the repository URL:

   ```bash
   ./macos_clone.sh https://github.com/your-username/your-repo.git
   ```

## ✅ What It Does

- Clones the repo into the current directory.
- Creates `.gitignore` with the line `.DS_Store` if it doesn't already exist.
- Commits and pushes that change.

## 💡 Notes

- If `.gitignore` already exists, the script will do nothing.
- The script does **not** push if you don’t have permission.
- You can modify the script to add more ignore rules as needed.

## 📄 License

MIT License. Feel free to use and modify.
