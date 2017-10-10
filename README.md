FuboTV Android Projects
=======================
- [Android App](https://github.com/fubotv/fubotv_android_v3)
- [Player Library](https://github.com/fubotv/player_android)


# Android Guidelines

List of guidelines that we use at [fuboTV](https://www.fubo.tv/) when developing for the __Android__ platform. 

* [Project and code style guidelines](project_and_code_guidelines.md)


# Android/Java Code Style

Android Studio code style settings for fuboTV's Java and Android projects.

Features
--------
- Based on googles java code style (https://git.io/v5XuB)
- NO Hungarian Notation (m-Prefix)
- No star imports
- Increase the line length to 118 (default 100)
- `android:id` after `xmlns` declaration in XML layouts
- Keep lifecycle methods together
- Keep getters and setters together
- Advanced code Arrangement rules for Java (Sort methods alphabetically (a-z) and by visibility (`public`-`private`))
  - Inner classes (classes, interfaces, enums)
  - Fields (grouped by visibility, a-z)
  - public static methods (a-z)
  - Constructors
  - Android Lifecycle methods in correct order
  - Methods (grouped by visibility, a-z)
  - static methods (grouped by visibility (except public), a-z)


Installation
------------

 * On Unix, run the `install.sh` script. Windows users should use `install.bat` instead.
 * Restart IntelliJ/Android Studio if it's running.
 * Open IntelliJ Project Settings -> Code Styles, change the code style for the
   project to the one you want.

Amendments/Additions to Code Style
------------------------

Over time new rules might be requested by team members. In order to keep this process civil, its recommended to put up a democratic vote for each new feature. If most devs agree on the feature, we will add it. If rules are to specific for a project/framework/library they won’t be added.


License
-------

[![Public domain](https://licensebuttons.net/p/zero/1.0/88x31.png)](https://creativecommons.org/publicdomain/zero/1.0/legalcode)
