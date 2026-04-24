# Epoch-Fizzle-Removal
Batch script that checks for and restores “fizzle” error sound files before launching Epoch.
---

## Setup

1. Place the **Fizzle folder** (included) anywhere on your PC
   - Example: `C:\WoW_Fix\Fizzle`

2. Open: `Epoch.bat`

3. Edit these two lines:
   ```
   set WOW_DIR=YOUR_WOW_FOLDER_HERE
   set BACKUP_DIR=YOUR_FIZZLE_FOLDER_HERE
   ```
   - Example:
     ```
     set WOW_DIR=C:\Games\Ascension WoW
     set BACKUP_DIR=C:\WoW_Fix\Fizzle
     ```

4. Save the file.

5. Launch the game using: `Epoch.bat`

---

## Important

- Always launch the game using `Epoch.bat`
- Using the normal launcher may delete the files again
- You can still run the launcher for updates — just use the `.bat` afterward

---

## Troubleshooting

### Game doesn't launch

- Make sure `Ascension.exe` exists in your WoW folder
- Double-check the `WOW_DIR` path

### Sounds still playing

- Make sure you're launching via the `.bat` file
- Check that files exist in: `Data\Sound\Spells\Fizzle\`
