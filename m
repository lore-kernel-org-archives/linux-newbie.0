From: Ray Olszewski <ray@comarre.com>
Subject: Re: starts error
Date: Fri, 13 Sep 2002 12:48:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020913115558.022dfbf0@celine>
References: <7C078C66B7752B438B88E11E5E20E72E0EF512@GENERAL.farsite.co.uk>
 <5.1.0.14.1.20020913084016.02317ec0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D82599F.6F753060@aaahawk.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Bill Pleasants <Bill_Pleasants@aaahawk.com>, linux-newbie@vger.kernel.org

OK. I don't use Mandrake, so I can't help with Mandrake-specific bits like 
what an "automatic" installation of it does or what a Mandrake-specific doc 
says. Possibly someone else here is a Mandrake users with sufficient 
experience to help you at that level.

Since your problems are not Linux problems as such, but X problems, you 
need to look to the X sites for help. The core one is www.xfree86.org . I 
believe there are also X-related Linux HowTos; if they are not on your 
system somewhere (different distros handle them differently, and as I say, 
I am not familiar with the specifics of Mandrake), try www.linuxdoc.org .

As to your specific error -- execve is the C function (actually, one of 
several) called when one program executes another. Here, xinit is trying to 
start X (the actual server) and failing. The exact error values are hard 
for a beginner to track down -- they are buried in a set of header files, 
all called errno.h, in various locations within /usr/include/ -- but error 2 is

         #define ENOENT           2      /* No such file or directory */

Without more context, it is hard to know what this error means in your 
case. It may simply mean that the application /etc/X11/X (this is the 
actual X server) is missing from your system. That's trivially easy to 
check; just do "ls /etc/X11/X" to see if it is there. But I do not actually 
*know* that the error values that xinit is reporting are the standard errno 
numbers. So at this point, I'd look for an error in whatever file 
xf86config creates (perhaps /etc/X11/XF86Config-4 -- the exact path varies 
by distro, and the filename itself differs between X11 3.x.x and 4.x.x). 
I'd particularly inspect those "two suggested options" you added "manually" 
for errors.

As to your more general question (about info on commands), the first answer 
is to refer you to the FAQ listed at the end of list messages. Depending on 
what Mandrake has decided to install, you may have the man (online manual) 
system (start with "man man"), the info system ("info"), and/or a set of 
HowTos (look around; try in /usr/share/doc). Of these, the man system is 
closest to DOS's "help" system in style -- it is both a bit more cumbersome 
to read but also more helpful substantively (from my experience, at least 
... it's been a long time since I used DOS, though). Also, many commands 
will tell you something about themselves if you type the command name 
followed by either "-h" or "--help".

I'm sorry this is not a more direct answer, but I hope it give you some 
help nonetheless.

At 02:33 PM 9/13/02 -0700, Bill Pleasants wrote:
>Thanks for your kind welcome, Ray.  As for my specific question,
>I have not used Linux before. I erased Windows and did an automatic
>installation of Mandrake 7.2 on a Packard Bell A950-TWR with a P.B.
>monitor 1512SL . The X part failed and the computer boots to the
>command prompt. I tried the kde, gnome and startx commands without
>success. I followed the steps in mandrakeuser.org/docs/xwin/xtroub.html
>through running xf86config and manually adding two suggested options.
>
>After entering "startx" I get
>         "execve failed for /etc/X11/X (error 2)
>         giving up
>         xinit: Connection refused (error 111) unable to connect to X server
>         xinit: No such process (error 3): Server error."
>
>
>         Processor type: Intel pentium           Processor speed: 129.6
>         RAM: 16
>         HD type: ide                            HD capacity: 1.22
>         CD-ROM type: ide (judging by cable)
>         Graphic processor: Cirrus CL-GD5430/40  Video RAM: 1.024
>         Sound card: (with modem)
>
>Additional info that may be redundant:
>                             The video processor is on the main board. There
>                             is a chip labeled CIRRUS
>                             LOGIC CL-GD5430-QC-D. This is connected to
>                             a chip labeled VLSI 9531  D43851.
>
>                             The lspcidrake command gave:
>                             VLSI: 82C594-AFC2 (unknown ignore)
>                             VLSI 82C59617 [WILDCAT] (unknown ignore)
>                             CIRRUS LOGIC | GD 5430/40 [ALPINE]
>                             (DISPLAY_VGA CARD | CIRRUS LOGIC GD543X)
>                             CMD TECHNOLOGY INC. | PCI0640
>                             (STORAGE_IDE unknown)
>
>                             SuperProbe gave:
>                             SUPER-VGA
>                             CHIPS: CIRRUS CL-GD5430/40 (PCI PROBED)
>                             1,024 KB
>                             RAMDAC: CIRRUS LOGIC BUILT IN
>                             15/16/24-BIT DAC
>                             6 BIT LOOKUP TABLES
>
>I have spent at least 30 hours searching for interpretations of the
>error messages.  If this is available, I would appreciate knowing
>where.  I have seen other errors in various logs.  Also if there is a
>list of utilities on the machine and what they do like "help" on MS DOS,
>I would appreciate learning about it.





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
