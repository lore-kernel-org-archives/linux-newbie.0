From: James Miller <jamtat@mailsnare.net>
Subject: auto start WM on second VT
Date: Fri, 8 Apr 2005 08:24:33 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504080758090.5555@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

After all those complex problems with sound, let me ask for some help on 
something that should be much easier to resolve. It should just be a 
matter of automating something I currently do manually. This refers to the 
same Debian unstable system I discussed in the sound card thread.

I've become attached to some console programs and had been running them in 
a sort of console window manager called "twin" on a second VT. Works 
nicely (if you can get the right vga mode to work with your video card) 
but there are some inconveniences--for example if you need to run some X 
app when you try opening an email attachment or something. The combination 
of those two problems led me to consider instead running a lightweight, 
console-like WM on that second VT. I decided on ion3, since I've had some 
experience with that.

I discovered through some web searching that setting this up to work 
"manually" was very easy under Debian. It was easy because Debian 
apparently does not use an .xinitrc file found in the user's home dir when 
starting up Xwindows on display :0 (hope I've said that at least somewhat 
correctly). However if you create an .xinitrc file in your home directory 
that points to a valid WM binary on your system, then start Xwindows on 
display :1 in a second VT, it will use that .xinitrc file and get the WM 
running on the second display. This can be either a second copy of the 
same WM or a different WM altogether. One can alternate between the two by 
use of the ctrl-alt-F7 and ctrl-alt-F8 keys. An example of the command 
line way of doing this is to press ctrl-alt-F2 to get to the second VT and 
a (login, then) command prompt. From the prompt, simply issue startx -- 
:1.

Works fine. The question I'm currently trying to resolve however, is 
getting the WM to start up automatically in the second VT. This should 
happen either after I log into the system (using xdm), or, short of that, 
automatically. I gather it can be done by editing inittab, though I'm not 
sure of the exact syntax. I suppose it might also be accomplished by 
editing/creating some xdm config file. A third way might involve tweaking 
startx. And this is what I'd like to ask advice on.

Finally, my question. Can anyone offer suggestions on ways of getting the 
second WM running on display :1 automatically? E.g., after I log in to 
xdm? Hope this will be as easy as it seems.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
