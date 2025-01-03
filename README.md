<p align="center">
 <img src="https://i.imgur.com/0ZSQC7O.jpg" width=500 height=auto/>
</p>


# Windows 10 Snipping script
Snipping tool doesn't have autosave feature in windows 10, To automate this the PowerShell script in action.
(Even snip and sketch not saving though)
> Windows 11 have updated snip and sketch tool that have option to autosave
## Features
1. Saves the current clipboard image to the Screenshots folder.
2. No app installation required.
3. Light weight.
4. Portable.
## How to use?
1. Download the 2 files
  * `Snip.ps1`
  * `Snip-run.vbs`
2. Create a folder `Snip` in `C:/users/your-acc/AppData/Local` or any safe place you want ![folder|300](https://i.imgur.com/109tLau.png)
3. Place 2 files in that `Snip` folder
4. Go to `C:\Users\your-acc\AppData\Roaming\Microsoft\Windows\Start Menu`
5. Right click on directory -> New -> shortcut
6. Enter the path of  `Snip-run.vbs` script  
![short|300](https://i.imgur.com/iee3kSh.png)  
7. Now right click the shortcut
  * Assign a shortcut key `CTRL + ALT + S`
  * Apply shortcut
8. Now whenever your clipboard has image content it'll save to your "_Pictures/Screenshots_" folder
## Demo
![Demo](https://github.com/user-attachments/assets/b66e7229-b3de-43a1-83ec-fde57f90c3c9)



### Note:
> Windows keyboard shortcuts will work fine on "_Desktop_" folder and "_Start Menu_" folder.
The reason "_Appdata_" folder is used above to use for current user.
