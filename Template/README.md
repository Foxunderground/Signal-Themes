# Theme Template

This is a template that can be modified to create custom themes

This was tested with signal v5.9.0

## instructions:

1. Download [7zip](https://www.7-zip.org/)
2. Install the [7zip asar extension](https://www.tc4shell.com/en/7zip/asar/). Follow the steps on the download page to correctly install it
3. Exit Signal if it's already running
4. Open your `app.asar` file at C:\Users\user_name\AppData\Local\Programs\signal-desktop\resources\app.asar with 7-Zip. Open it by right clicking it and then going to 7zip and then Open Archive
5. Find `/stylesheets/manifest.css` in it. Right click on the file and select Edit.
6. Copy the entire content of this theme and paste **AFTER** the contents of `manifest.css`.
7. Save & close your editor and then 7-Zip will ask you if you want to apply modifications to the original `app.asar` file. Confirm it and then close 7-Zip.
8. Finally open signal to test if it works.

**THERE ARE MORE OPTIONS AVAILABLE IN THE ZERO TWO THEME BUT FRANKLY I AM JUST TO LAZY TO REFIGURE OUT WHAT EACH OF THEM DO
I SUGGEST USING DARK IMAGES AND COLORS AS YOU NEED TO DO MINIMAL AMOUNTS OF MODIFICATIONS**

That is all. Feel free to open any issues or let me know if you have any improvements.
