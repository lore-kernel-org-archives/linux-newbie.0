From: glenn <genright@paradise.net.nz>
Subject: Re: I killed user's x server
Date: Sat, 23 Nov 2002 15:34:36 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211231534.36248.genright@paradise.net.nz>
References: <5.1.0.14.1.20021121103403.02116350@celine> <1037954445.1994.6.camel@zebra.vil.ite.mee.com> <200211221935.gAMJZIW09438@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211221935.gAMJZIW09438@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

On Sat, 23 Nov 2002 08:35, Haines Brown wrote:
> Also, my problems followed a disastrous attempt to install an nVidia
> driver in place of the generic nv driver in RedHat. I completely blew
> the X server in the process, and had to recover from the console. OK,
> but I'm (ie, user) is not using a /etc/X11/XF86Configure-4 rather than
> a XF86Configure configuration file. I have a funny feeling that the
> former was created by the abortive driver install, and my backing out
> left it there and in use. Can anyone tell me which is the correct
> configuration file for RH7.3 using the nv driver that comes with the
> distribution? If I'm using the wrong configuration, how do I switch
> it?

My understanding is that the XF86Config-4 config file is for the 4.2 server 
and the XF86Config file is for older 3.x version of X. The reason for the 
name change is the slightly different naming conventions for some of the 
configuration blocks, like mouse and keyboard definitions.

Use 'man XF86Config' for more details on this. The files will look fairly 
similar for video card and screen definitions, but the -4 version should be  
easier to read and understood. 

You can choose which card drivers and screen drivers are loaded in this config 
file.

Did you have more than one version of X installed? 

Did you try installing from source rather than binary rpms?

Im using mandrake 9, which is a little different so I might be going the wrong 
way. I have broken the server a couple of times, but I have been able to 
cerrect my mistakes by restoring from backups.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
