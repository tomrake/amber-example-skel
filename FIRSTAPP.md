The first app is based on the [Amber First app instructions](https://github.com/amber-smalltalk/amber/wiki/Writing-my-first-app)

### Create the project directories:

    mkdir hello
    mkdir hello/st
    mkdir hello/js
    
### Create the hello/index.html file:

    <!DOCTYPE html>
    <!DOCTYPE html>
    <html>
      <head>
        <title>My First Amber Project</title>
        <script src="../vendor/amber/support/amber.js"></script>
        <script src="../vendor/amber/support/requirejs/require.min.js"></script>
        <script type="text/javascript">
          require.config({ paths: {
            'com_example_hello': 'js', //mapping compiled .js files
            'com_example_hello/_source': 'st' //mapping smalltalk source files
          }});
          require(['amber/devel'], function (smalltalk) {
            smalltalk.defaultAmdNamespace = "com_example_hello"; //used for all new packages in IDE
            smalltalk.initialize();
          });
        </script>
      </head>
      <body>
        <article>
          <h1>My First Amber Project</h1>
          <button onclick="require('amber_vm/smalltalk').Browser._open()">class browser</button>
          <button id="sayHello">say hello</button>
        </article>
      </body>
    </html>
    
### Start the amber server from my_project directory
    node vendor/amber/bin/amber-cli.js serve &

### Browser the following link

Browse the link [http://localhost:4000/hello/index.html](http://localhost:4000/hello/index.html)

### Build a working app

In the browser create the new class:

    Object subclass: #Hello
        instanceVariableNames: ''
        package: 'HelloApp'
        
Besure to save and then commit the HelloApp package.

Correct the index.html to load the HelloApp

        <script type="text/javascript">
          require.config({ paths: {
            'com_example_hello': 'js', //mapping compiled .js files
            'com_example_hello/_source': 'st' //mapping smalltalk source files
          }});
          require(['amber/devel', 'com_example_hello/HelloApp'], function (smalltalk) {
            smalltalk.defaultAmdNamespace = "com_example_hello"; //used for all new packages in IDE
            smalltalk.initialize();
          });
        </script>
 Reload the page [http://localhost:4000/hello/index.html](http://localhost:4000/hello/index.html) in the Browser the HelloApp should appear. Select the Hello class and the 'not yet classified' protocol. Add the following new method:
 
    begin
    "Makes me say hello to the user."
    
    | msg button |
    console log:'BEGIN'.
    msg := 'Hello world!'.
    button := '#sayHello' asJQuery.
    button click: [console log:'Click!'.button after: '<p>' , msg , '</p>'].

Save the method and commit HelloApp again. Now modify the index.html again to start the class by;

          require(['amber/devel', 'com_example_hello/HelloApp'], function (smalltalk) {
            smalltalk.defaultAmdNamespace = "com_example_hello"; //used for all new packages in IDE
            smalltalk.initialize();
            $(function () {
                smalltalk.Hello._new()._begin();
            });
          });

Now reload the page. When you click the 'say Hello' button, 'Hello World!' should be added below the button.
