From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: (no subject)
Date: Fri, 1 Aug 2003 18:35:59 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0308011814320.13911@ppg_penguin>
References: <3F2AB323.1000409@fuse.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F2AB323.1000409@fuse.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 1 Aug 2003, rob.rice wrote:

> I have the ICEwm and would like info on setting it up I have ben around
> the web and cant find info on it
> I want to do things change my wall paper and add and remove  programs
> from the menues
>

 The documentation *is* out there, but it can be a bit hard to find a
way to the part you want.  I think the main way in is through the icewm
home page, try freshmeat.net.  The "wallpaper" is determined by the
setting of DesktopBackgroundImage and friends in the preferences file :
~/.icewm/preferences at a user level, or /etc/icewm/preferences for
everybody (the latter might be somewhere else, depending on your distro
- use locate icewm/preferences if you can't find it.

 The file is well commented, but there is a lot to learn, so you might
want to keep a backup copy.

 The menus are theoretically easy.  I can't remember where the
system-wide settings are stored, but user settings are in ~/icewm. You
should find a file for each sub-entry on the main menu, you can also
have a toolbar file for icons and programs to appear on the toolbar.
Myself, I've had problems with the kde and gnome menus ignoring what I
put in (probably because kde and gnome weren't installed when I built
icewm, and mine is now somewhat old), but the basics of these files are:

(space in first column)
the word prog (this implies there are other options, I guess)
program name to appear on the display
full path and filename for the icon
the name by which the program is invoked

e.g.
 prog Xterm /usr/share/myicons/Konsole_16x16.xpm xterm

These lines can also be commented out by a `#' in the first column.

The real hard part is finding suitable icons: they have to be 16x16 in
xpm format.  There are icons with packages such as kde, but most of them
left me underwhelmed (the format doesn't help).  If you can find a
suitable icon in a slightly bigger size, the ImageMagick tools can
shrink it and save it in the correct format.

Ken
-- 
 Peace, love, linux



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
