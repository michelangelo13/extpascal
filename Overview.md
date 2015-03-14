# ExtPascal is composed of four main components: #

01. The **Parser** able to scan Ext JS documentation in HTML format and to create the Wrapper.

02. The **Wrapper** programmatically created by Parser. It's in fact a set of units which has the definition of all Ext JS classes, properties, methods and events.

03. The **Self-translating** engine, ExtPascal unit. It's triggered when using the **Wrapper**, ie by creating objects, assigning properties and events, and invoking methods.

04. The **FastCGI** multithread environment. It implements FastCGI protocol using TCP/IP sockets and statefull, keep-alive, multithread web application behaviour.


![https://extpascal.googlecode.com/files/ExtPascal.png](https://extpascal.googlecode.com/files/ExtPascal.png)


01. The **Parser** read the HTML documentation of Ext JS;

02. Read **ExtFixes.txt** file to fix documentation faults and omissions, and;

03. Generate the **Wrapper**;

04. With the application running, a browser session do a HTTP request to the Web Server;

05. The Web Server send a **FastCGI** request to the application that create a **thread** to handle the request;

06. The **thread** create ExtObjects, set properties and call methods from **Wrapper Units**;

07. For each these tasks the **Self-translating** is invoked;

08. Generating JavaScript code that uses Ext JS classes;

09. At end of request processing, the **thread** read and format all JS generated;

10. And send the response to browser session. New requests can be done begining from step 4.

So the translating is not focused on JavaScript language, but to access widget frameworks made in JavaScript.
In this way the use of (X)HTML, JavaScript and CSS is minimum.
Indeed the Parser can be adapted to read the documentation of another JavaScript framework, Dojo for example.

# ExtPascal has one optional fifth component: #
The **CGIGateway** used to run an ExtPascal application on a Web Server that not provides FastCGI protocol but that provides CGI.

![https://extpascal.googlecode.com/files/CGIGateway.png](https://extpascal.googlecode.com/files/CGIGateway.png)

01. Browser requests a FCGI app through CGI gateway (for example ExtPascalSamples.cgi).

02. The CGI gateway tries to connect to associated FCGI app counterpart.

03. If the FCGI app isn't running, the CGI gateway fires up the FCGI app.

04. The FCGI app processes request from CGI gateway and returns the result.

05. The CGI gateway forward FCGI app result to the browser. The communication is done
through CGI standard protocol.

06. If there's no request over than MaxIdleTime, the FCGI app terminates itself.

# And ExtPascal has one experimental sixth component: #

![https://extpascal.googlecode.com/files/WebServerEmbedded.png](https://extpascal.googlecode.com/files/WebServerEmbedded.png)

Read WebServer\_Embedded for more details.