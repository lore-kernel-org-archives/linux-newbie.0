From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Kernel error
Date: Mon, 27 May 2002 19:15:57 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02052719155707.01212@unix.pa3gcu>
References: <5.1.0.14.1.20020527083534.027cf0b0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020527083534.027cf0b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 27 May 2002 15:45, Ray Olszewski wrote:
> Sorry to come late into this discussion, but I was curious about one thing:
> when did the 2.4.x kernel start storing its modules in gzip format?

Good job you did come in late, you woke me up, as a slackware user i now see 
the problem and i think i can explain.

Slackware does indeed install "distribution kernel modules" at install time 
in *.gz format and it does install them in 
/lib/modules/2.4.5/kernel/arch/i386/kernel/* or at least the spesified 
module, microcode.o.gz which is why i did not comment on it, what i did miss 
was the microcode.o.gz, as i just mention modules.o.gz only appier in a 
distro kernel.

What Shaun has NOT done i susspect is the following.
make modules modules_install         after something like
make config
make dep clean bzImage

Now as Steven pointed out, (something which i always recomend) is the use of 
EXTRAVERSION defined in the topdir makefile.
That should overcome old or obsolite modules getting used or called as i 
belive is the case here.

Thanks Ray for the kick in the !!!! to wake me up and thanks to Steven for 
pointing the EXTRAVERSION out..

So my advice would be as follows to Shaun.

cd /usr/src/linux
vi Makefile # or emacs or joe, your editor.
edit line 4 make it look like.
EXTRAVERSION = -1
save file
make oldconfig ( or completey start a new) make config
make dep clean bzImage && make modules modules_install

(A small note) the above 'make oldconfig' is only applicable when one has 
already configured his kernel before with make config/menuconfig/xconfig and 
he/she has not done a make distclean which will wipe out a file called 
.config which contains all the confuguration details.

After the compile is complete we can copy our kernel and System.map to /boot.

cp /arch/i386/boot/bzImage /boot/vmlinuz-2.4.5-1
cp System.map /boot/System.map-2.4.5-1

Now edit /etc/lilo.conf

vi /etc/lilo.conf
Make sure one has the following at the top of the file;

prompt
timeout=100

add a new entry as follows somewhere below your old kernel entry,

image=/boot/vmlinuz-2.4.5-1
        label=2.4.5-1
        read-only
        root=/dev/hdXx
Change Xx for ones root partition.

Save the file and type;

/sbin/lilo -t
If one gets a return like;
root@unix:/usr/src/linux# /sbin/lilo -t
Added 2.4.5 *
Added 2.4.5-1
The boot sector and the map file have *NOT* been altered.

That means all went well, you can safely rerun lilo and install the new 
kernel.
/sbin/lilo

Reboot of course is the next step and hope you did not forget anything 
"needed in you new kernel"..

All kernel modules AFAIK will now be under /lib/modules/2.4.5-1/* and will 
not be in .gz format, simply module.o.

Now i could be wrong in my assumption(s) but i think i am on the right track.

>
> I use 2.4.17 (from Debian Sid) here, and my compiled modules are all
> something_appropriate.o, NOT something_appropriate.o.gz . Is this
> difference a distribution variation I'm unacquainted with? Or how am I out
> of date here?
>
> Also, the first path shown in Shaun's list is an unusual one to my eye --
> the end of it (the arch/i386/kernel/microcode.o.gz part) looks more like
> something I'd expect to see in kernel source (/usr/src/linux/) than in a
> modules path.
>
> At 07:57 AM 5/26/02 -0700, Shaun Bryant wrote:
> >Richard,
> >
> >I have had two kernel panics in the last 3 days which is why I was looking
> >in the syslog to find the problem. I ran the command you mentioned and got
> >the below results.
> >
> >depmod: *** Unresolved symbols in
> >/lib/modules/2.4.5/kernel/arch/i386/kernel/microcode.o.gz
> >depmod: *** Unresolved symbols in
> >/lib/modules/2.4.5/kernel/drivers/char/drm/gamma.o.gz
> >depmod: *** Unresolved symbols in
> >/lib/modules/2.4.5/kernel/drivers/char/drm/i810.o.gz
>
> [more of the same deleted]
>
>
> --
> -----------------------------------------------"Never tell me the
> odds!"--------------
> Ray Olszewski					     -- Han Solo
> Palo Alto, California, USA				ray@comarre.com
> ---------------------------------------------------------------------------
>----------------
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
