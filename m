From: James Miller <jamtat@mailsnare.net>
Subject: Re: kernel patch failure: input please?
Date: Tue, 20 Jul 2004 09:22:33 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407200846400.1363@debian-emach>
References: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
 <Pine.LNX.4.58.0407201257320.9456@ppg_penguin.kenmoffat.uklinux.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407201257320.9456@ppg_penguin.kenmoffat.uklinux.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 20 Jul 2004, Ken Moffat wrote:

> On Mon, 19 Jul 2004, James Miller wrote:
>
> > Using sort of a scatter-gun (maybe scatter-brained?) approach to the
> > problem of booting a USB drive, I've managed to install a base Debian file
> > system to the USB drive.  Yes, the new beta Sarge installer gave me the
> > option of installing the system there.  Booting is, as has been alluded in
> > the earlier booting from USB exchange on this list, another matter.
> > Since the system is meant to use the 2.4.25-1-386 kernel, I've decided I
> > should try and compile that kernel with the root file system mounting
> > delay patch we've spoken about.  But, I've gotten stuck at the patching
> > phase.  I'm actually using directions for patching a 2.4.23 kernel that I
> > found on another USB booting site (
> > http://www.freewebs.com/tsj/bootingUSB_ldp_v0.1.htm ) that suggests
> > applying the patch to do_mounts.c .  When I try to apply the patch using
> > the directions found at that site, I get the following:
> >
> > [11:39:55]root@mymachine kernel-source-2.4.25$ patch -p0
> > <kernel2-4-25patch
> > patching file init/do_mounts.c
> > patch: **** malformed patch at line 5: static void __init mount_root(void)
> >
>
>  I've seen this when I was hand-editing a diff to only use some of the
> changes in a file.  Can be caused by errors in the "magic numbers"
> saying how many lines change/where they are.  This sort of thing means
> the patch will not apply for *anyone*, so you might want to see if the
> version you got was corrupted, or has been updated.

For reference, here's the "updated" (adapted for the 2.4.23 kernel) patch:

--- init/do_mounts.c 2003-11-28 13:26:21.000000000 -0500
+++ init/do_mounts.c.mount_root 2006-01-29 10:45:53.000000000 -0500
@@ -759,6 +759,19 @@

static void __init mount_root(void)
{
+ static DECLARE_WAIT_QUEUE_HEAD (jordi_queue);
+
+ printk ("\n\n\n---------------------------------\n");
+
+ printk (" WAITING FOR A WHILE (1000) \n");
+
+ printk (" TO DETECT THE USB DISK \n");
+
+ sleep_on_timeout (&jordi_queue, 2000);
+
+ printk ("---------------------------------\n\n\n");
+
+
#ifdef CONFIG_ROOT_NFS
if (MAJOR(ROOT_DEV) == NFS_MAJOR
&& MINOR(ROOT_DEV) == NFS_MINOR) {

In the C source file do_mounts.c, the line right before "static void
__init mount_root(void)" is blank and is line number 759 (line 760 reads
"static void __init mount_root(void)").  This is the 5th line of my
kernel2-4-25patch file that is being complained about as the problem area.

>  If the file isn't very big, you can copy the code in a text editor, but
> that isn't recommended for a newbie list because you need to understand
> what the code is doing.

I don't understand very well what the code is doing.  I see that, in
do_mounts.c, "static void __init mount_root(void)" is followed immediately
by "#ifdef CONFIG_ROOT_NFS".  From this, I deduce that what lies between
the two in the patch is what's actually getting inserted.  Further, I'm
guessing the + signs at the left margin are telling the patching routine
to add the lines followed by the sign to the file being patched.  Words
like "WAIT," "DETECT" and "USB DISK" are, of course comprehensible.
Others like "printk" and "jordi_queue" mean nothing to me.  I'm also not
clear on the line spacing: the lines of the patch are mostly what we would
call in typesetting/page formatting terminology "double spaced" or even
triple spaced.  I know generally the conventions followed in publishing
regarding line spacing, and have my own ideas about how these things can
aid in (or are irrelevant to) reading comprehension.  What they mean to
computers - if anything - I have no idea.

>  Also, you don't need to be root until you are trying to install things,
> and setting PS1 to end '\$' (with the whole string in _single_ quotes)
> will change the prompt to end in '#' when you _are_ root.

The file I'm patching is in /usr/src/kernel-source-2.4.25, and my user
does not have read/write permissions in that directory.  At least that was
my assumption.  Not that I question your advice on the root prompt, but
why would having # instead of $ matter?  If it's just to remind one that
they are running as root, I have another way of indicating that: the whole
root prompt is red.  But maybe there is some other reason to have #
instead of $ when running as root?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
