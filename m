From: Ray Olszewski <ray@comarre.com>
Subject: Re: missing man and smbsh
Date: Sat, 21 Dec 2002 08:34:15 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021221081448.02103cf0@celine>
References: <5.1.0.14.1.20021220191905.020c3c10@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <008f01c2a90c$0b43f560$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:14 AM 12/21/02 -0500, Jonathan Kallay wrote:
>Sorry about being short on the details- my machine is at work and I'm
>starting a two week vacation (the perks of being a teacher).

As a practical matter, you may then want to defer pursuing this until you 
once more have access to the machine with the problems. We'll still be 
here, I'm sure.

>The way I now understand it, dselect installs precompiled binaries rather
>than compiling the source.

Right. So does apt, unless you choose the "apt-get source" option (and have 
source-package directories listed in /etc/apt/sources.list).

>Since the configuration options for Samba are
>set before compilation, I'll either have to work with the apt-get or dpkg
>source building features or just download the source and build it the usual
>way without the packaging.

I'm not sure what you mean by "configuration options" above. Like most 
complex apps, Samba has config files that can be edited independent of 
compilation. Although I can't know your situation well enough to be 
certain, I'd be surprised if you needed to compile the various Samba pieces 
yourself (other than kernel components ... the usersspace stuff should be 
fine precompiled).

>As for the smbfs module, when I installed the smbfs package in dselect I
>expected the smbfs module to be placed somewhere.  Shouldn't I be able to
>insert the module without recompiling or reinstalling the kernel?

You should read the package description. "apt-cache search smbfs" returns 
this short description: "smbfs - mount and umount commands for the smbfs 
(for kernels >= than 2.2.x)". From that, I'd say it does not include the 
smbfs module. (I don't know beyond that -- I run an SMB server on a Linux 
host, but not the client, so I don't need smbfs.)

Really, how can it? Debian Woody provides a wide range of kernel choices, 
including 2.2.x kernels, 2.4.x kernels, and maybe even (I didn't check) 
2.5.x kernels. Modules tend to be kernel-version specific. I'd suggest that 
when you are back at your machine, you do what I already suggested: find 
out what kernel you are using. If it is the default 2.2.20-compact, replace 
it with a current one (2.4.20 seems to be the latest kernel-image listed, 
but that was checking Sid, not Woody), doing your own compile if the 
precompiled one doesn't have what you need.

>The missing man:  when I enter the command "man foo" I get a message like
>"bash:  man not found"- as if it simply does not recognize the command.  If
>I type "whereis man" it'll return something like "man: /usr/share/man
>/usr/share/doc/man/man.8.gz" or something of the sort.

If you want to find the "man" *binary* with this command, you do it with 
"whereis man -b". Or "which man", which will find the "man" app ONLY if it 
is in the user's current PATH. In any case, the binary "man" should be in 
/usr/bin/man -- until you check if it is there or not, there's no way to 
help you. (The "something like" you report above are the miscellaneus 
information directory for man and man's own man page.)  Either the command 
was somehow deleted or made non-exdcutable (improbable) or the userid you 
are using does not include /usr/bin in its PATH (also pretty improbable). 
Or you're remembering, hence quoting, the response incorrectly and 
something else is going on.


>----- Original Message -----
[old stuff deleted]



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
