From: Pierre Rousselet <pierre.rousselet@wanadoo.fr>
Subject: Re: Netscape 6.22 and Red Hat 7.2
Date: Sat, 27 Apr 2002 06:24:52 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CCA2814.1040901@wanadoo.fr>
References: <3CCA2321.60105@adelphia.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mark Johnson <rmjohnson144@adelphia.net>
Cc: linux-newbie@vger.kernel.org

Mark Johnson wrote:
> Hello All,
> 
>     I am having troubles installing Netscape 6.22 on my Red Hat 7.2 
> system and was wondering if someone could help.  I currently use 
> netscape navigator 4.78.  When I install the new 6.22 it finds the old 
> version and asks to delete it and respond yes to delete.

netscape-6 is mozilla. The last release is mozilla-1.0-rc1.

Depending on your display the installation window may be too small for 
showing where mozilla is installed, you may have to enlarge it first.

By default it installs itself in /usr/local/mozilla if you unpack a 
mozilla-xxx.tar.gz archive or /usr/local/netscape if you unpack a 
netscape-6-xxx.tar.gz.

>  The program 
> installs fine and comes up and running fine.  But, when I exit the 
> program and start it up it doesn't give me a new icon or anyway to start 
> up the new version.  When I use the old icon, I get the old netscape.

I wouldn't expect any automatic link installed. Just use kmenuedit and 
enter name 'Netscape-6' command line '/usr/local/netscape/netscape' (or 
/usr/local/mozilla/mozilla).

> I have tried about 3 times to reinstall it  with no luck.  although the 
> third time I removed the old navigator icons from the KDE menu and it 
> was replaced with a new icon, but I get the old netscape.  Then I tried 
> running Mozilla to get my mail and sure enough I get the new version of 
> netscape, but it has the old version of mozilla in the lower left corner 
> icons.  The mozilla program seems to be the newer version that is built 
> in though as I didn't install a new one, just old Icons in the lower 
> left corner. 

Check the version with the menu Help 'About netscape'

> anyway, I did a file search for netscape and couldn't 
> locate anything but the old netscape stuff.  I even searched for *6.22* 
> with no results?  Is there a way to uninstall the old version?

You can safely delete any previous diretory /usr/local/netscape. Your 
mail files are in /home/.netscape


Pierre
------------------------------------------------
  Pierre Rousselet <pierre.rousselet@wanadoo.fr>
------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
