<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1">
        <meta name="copyright" content="Creative Commons - BY SA">

        <title>Woomoo Services Webpanel</title>

        <link rel="shortcut icon" href="favicon.ico">

        <link rel="stylesheet" href="/static?file=landing.css" type="text/css" media="screen" title="no title" charset="utf-8">

    </head>
    <body>
        <div id="border">
            <div id="page">
                <div id="title">
                    <a href="/">Woomoo*</a>
                    <span>unprofessional irc in a box!</span>
                </div>
                <hr />
                <div id="content">

        <div class="column red">
            <form action="process_login" method="post">
            <h1>Login</h1> <br />
                    <p>Nickname <br />
                    <input name="nickname" type="text"></p>

                    <p>Password<br/>
                    <input name="password" type="password"></p>
                    <p><input value="Log in" type="submit"></p>
        </form>
        </div>
       <div class="column green">
            <h1>WebIRC</h1>
        <p>some webchat stuffs here.</p>
        </div>

        <div class="column blue">
        <form action="process_registration" method="post">
            <h1>Register</h1>
                                <p>Nickname <br />
                    <input name="nickname" type="text"></p>

                    <p>Password<br/>
                    <input name="password" type="password"></p>
                    <p>Email<br/>
                    <input name="email" type="email"></p>
                    <p><input value="Register Account" type="submit"></p>
                    </form>
        </div>

    <div style="clear:both"></div>

    <div style="clear:both"></div>

                </div>
            </div>
        </div>
        <div id="footer">
            Creative Commons &copy; BY-SA Woomoo
        </div>

    </body>
</html>
