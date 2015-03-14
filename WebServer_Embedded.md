ExtPascal also supports an embedded (or internal) Web server mode. When an ExtPascal application is compiled with an embedded Web server, you don't have to install and configure a Web server such as Apache or IIS to run the app, although you lose the flexibility and facilities that an Apache or IIS server can offer via its modules.

# Steps #

Here are the steps for compiling the example app with an embedded Web server:

1. Follow the **First Steps** on GettingStarted page.

2. Download the **Indy 10** source code, if needed.

> [Indy project](http://www.indyproject.org)

> [Delphi source](http://www.indyproject.org/downloads/10/indy10.0.52_source.zip)

> [FPC source](http://wiki.lazarus.freepascal.org/Components_and_Code_examples)

Note that Delphi 2006 and later already includes Indy 10.

3. Open **ExtPascalSamples.dpr** with Delphi or open **ExtPascalSamples\_embedded.lpi** with Lazarus.

  * With Delphi, choose Project | Options.
    1. On the Compiler tab, check "Assignable typed constants".
    1. On the Directories/Conditionals tab, enter the path to Indy in "Search path" (not needed if your Delphi includes Indy 10).
    1. On the same tab, enter WEBSERVER in "Conditional defines".

  * With Lazarus, choose Project | Compiler Options.
    1. On the Paths tab, change Other Unit Files to point to Indy.
    1. On the Other tab, make sure -dWEBSERVER is entered in Custom options.

4. With Delphi, choose Project | Compile. With Lazarus, choose Run | Build.

5. Copy the ExtJS folder below the folder where the ExtPascalSamples executable file is located. Make sure the ExtJS folder is named **ext** for this example.

6. Start ExtPascalSamples from the command line or by double-clicking it. Note that the embedded server example does not appear to work when run within the Delphi or Lazarus IDE.

7. Start a Web browser and enter `http://localhost/Home`

Port 80 is used in this example. Other Web servers must be disabled on your machine if they're using port 80. You can also change the port used in the call to TIdExtApplication.Create. For example, if you change the port from 80 to 8080 you would enter `http://localhost:8080/Home` in the browser.

8. You can shut down the app with Task Manager (Windows) or Activity Monitor (OS X).