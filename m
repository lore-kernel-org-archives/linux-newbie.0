From: caszonyi@rdslink.ro
Subject: Re: xset errors
Date: Sat, 10 Jan 2004 01:01:44 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401100059060.1299@grinch.ro>
References: <Pine.LNX.4.44.0401091518250.15733-100000@legolas.engin.umich.edu>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0401091518250.15733-100000@legolas.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

On Fri, 9 Jan 2004, Karthik Vishwanath wrote:

> After I ssh -X into a remote machine and try to run mathematica, I get a
> bunch of errors:
>
> ---
> xset:  bad font path element (#64), possible causes are:
>     Directory does not exist or has wrong permissions
>     Directory missing fonts.dir
>     Incorrect font server address or syntax
> ---
>
> I assume that these messages are telling me that the fonts the program is
> looking for are absent on my local machine, is that right? How can I fix
> this?
>

the xset man page says that:
       fp= path,...
               The  fp=  sets  the  font path to the entries given in the
               path argument.  The entries are interpreted by the server,
               not  by the client.  Typically they are directory names or
               font server names, but the interpretation is server-depen-
               dent.

       fp default
               The  default  argument causes the font path to be reset to
               the server's default.

       fp rehash
               The rehash argument resets the font path  to  its  current
               value,  causing the server to reread the font databases in
               the current font path.  This is generally only  used  when
               adding  new  fonts  to  a  font  directory  (after running
               mkfontdir to recreate the font database).

so you i think you must modify the font path for the server you are
connecting toor maybe the default font. I never saw this error (Xfree86
requires just to find the default font)

> Thanks,
>
> -K
>

Calin

--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
