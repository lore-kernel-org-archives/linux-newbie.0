From: Beolach <beolach@comcast.net>
Subject: Re: remote X sessions
Date: Tue, 06 Jan 2004 02:27:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FFA7F96.6060600@comcast.net>
References: <1073371557.10949.4.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1073371557.10949.4.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: jalangle@nmu.edu
Cc: linux-newbie@vger.kernel.org

Jacob Langley wrote:
> I've been all over the internet tonight looking for exactly what I want
> and I can't find it.  What I'd like to be able to do is type something
> like
> 
> $ startx 
> 
> Maybe with a whole lot of command line options even and be able to open
> an X session running fluxbox or twm or some other light window manager
> on a completely separate machine on my lan.  I'm so rarely in a window
> manager now that I'd like to be able to just use one off another
> computer and stick to a console only install on my main system since I'm
> the only person that uses it.  Any ideas or places to look would be
> appreciated.
> 
> 

Quick answer:  Copy & past the script below, edit as appropriate, and 
save as $HOME/.xinitrc, then run startx.

Long answer:
To do this, you need to set up the both ends of the connection, the 
server and the client.  In the following brief description, replace 
xserver with the hostname of the machine you will be sitting at, and 
xclient with the hostname of the machine you want to run the application 
(the window manager in you're question - for simplicity, I illustrate 
with the xmatrix screensaver).

Step 1: Tell the local display (the server) to accept connections from 
the remote computer, for example with the following command:

user@xserver:~$ xhost +xclient

Step 2: Tell the remote application (the client) to direct its output to 
your local display, either with the -display or --display command line 
options, or with the DISPLAY environment variable for example:

user@xclient:~$ /usr/X11R6/lib/xscreensaver/xmatrix -display xserver:0.0

or

user@xclient:~$ export DISPLAY=xserver:0.0
user@xclient:~$ /usr/X11R6/lib/xscreensaver/xmatrix


Now, where you want the window manager to be running off the remote 
(client) machine, it gets trikier, because each X display can only have 
one window manager running. Most X session scripts end with the window 
manager command, so you have to quit or kill this window manager before 
you can start the remote window manager, but as soon as the window 
manager ends, the X server closes as well.  So you actually need to 
write a X session script that will start the remote window manager.

Here is an example of such a script:
------------------------<snip>------------------------
#!/bin/sh
# Standard X Setup stuff
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/X11R6/lib/X11/xinit/.Xresources
sysmodmap=/usr/X11R6/lib/X11/xinit/.Xmodmap
# merge in defaults and keymaps
if [ -f $sysresources ]; then
     xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
     xmodmap $sysmodmap
fi
if [ -f $userresources ]; then
     xrdb -merge $userresources
fi
if [ -f $usermodmap ]; then
     xmodmap $usermodmap
fi
# Here's the important stuff:
# Allow connections from the remote (client) machine
xhost +xclient

# Connect to the remote machine (xclient), and start the window manager
# Only have one uncommented.
# Here's how you could start Gnome:
#ssh xclient /usr/bin/gnome-session --display xserver:0
# Here's a twm example:
ssh xclient /usr/X11R6/bin/twm -display xserver:0
------------------------<snip>------------------------

The 2 important lines are
	xhost +xclient
that allows the client machine to display on the X server, and
	ssh xclient /usr/X11R6/bin/twm -display xserver:0
which signs into the client with ssh, and then launches the window 
manager connected to the X display on xserver.  Note that this script 
requires you to have configured ssh to automatically sign in without 
prompting for a password (see the ssh man page).


More detailed info available in the following documents:

<http://www.ibiblio.org/mdw/HOWTO/Remote-X-Apps.html>
Specific to remote X Apps - This should cover everything you need.

<http://www.tldp.org/HOWTO/XWindow-User-HOWTO/index.html>
More general X Windows information, with some info on remote X apps.

man 7 X
man 1 xinit
man 1 xhost
man 1 ssh
The manual pages for relevant programs.

Hope this helps,
Conway S. Smith

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
