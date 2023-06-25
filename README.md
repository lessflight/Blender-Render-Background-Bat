# Blender-Render-Background-Bat
Batch script to render blender files in the background on windows devices. One might choose to use this script to render more stably, use less resources when rendering or have a less distracting interface to track the progress of one's render.

Useful Additions Include: 
1. Start and End Time of Render
2. Visible Frame by Frame Progress
3. Errors for Incorrect Inputs

## Setup

The setup is very simple:
1. Download ZIP and Extract to Target Location
2. Right Click BlenderRenderBack.bat and Choose to "Edit With Notepad"
3. On Line 10 Enter File Path to Blender.exe Between the Quotation Marks
4. Save, Exit and now you can Click on BlenderRenderBack.bat to run the script

## Use

1. Ensure that the target .blend file is adequately set up. You are happy with the scene, frame range and output location
2. Double Click on BlenderRenderBack.bat to run the script


## Limitations, Issues, Troubleshooting
1. If Input is Less Than 8 Characters Script Will Crash
2. If Input Contains an Unclosed Quotation Mark, Script Will Crash
3. Inputed File Cannot Contain a Space in its Name. 
  This Will Lead to an "Error: Cannot read file 'D:\user...' at the Top of the Console
  but a Positive Render Message Below
