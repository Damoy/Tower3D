# Tower3D
A small Tower-Defense 3D game made in C++ OpenGL from scratch for a university project.

**How to launch:**
*(Windows)*
- Download the zip
- Unzip
- Make sure you have Visual Studio 15 or 17
- Launch the Visual solution
- Upgrade the project if you have Visual 17
- Click on show all files on the solution explorer to see src, res and class diagram files and include them in the project if they are not
- Check your configuration, Debug, x86, win32 (if you want 64 or whatever, reproduce the linking as shown in the images below)
- Right click on the project -> Build
- Launch


**If problems are encountered:
Please check if you have glut32.dll in the executable folder, and if you build one, check your dependencies :)**

*Dependencies are: GLEW, GLFW, GLM, STBI and GLUT.*
Project has fully been made under Debug configuration, x86, win32

**To see the project arborescence as I do, on Visual, on the solution explorer, click on "show all files", you will see res and src folders.**
ClassDiagram.png is a diagram showing the project arborescence.

*Solution has been made in Visual Studio 15, on 17+, will require a project update.*
*Please if you have any trouble regarding the build / execution, contact me at damien.fornali@gmail.com*

**Below are images that show my project configuration:**

- Includes
https://imgur.com/a/Pr417

- Preprocessor
https://imgur.com/a/SybpI

- Linker libraries
https://imgur.com/OLb9hgT

- Linker dependencies
https://imgur.com/pLkEpA6


**Remark: opengl32.lib should be included in Visual Studio (not sure if windows provides it)**
