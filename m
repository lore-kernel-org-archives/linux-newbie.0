From: Amin <raihan@citech-bd.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Sat, 10 May 2003 16:09:03 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030510100903.GA1586@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

Basically, you need to edit your ``/etc/inittab'' file, and
change your default runlevel to 3 (it's currently 5).  What
this means to you is: change the line that says

id:5:initdefault:

to

id:3:initdefault:

This will be a simple search-and-replace operation from any
text editor.

But you need to be able to access the file to be able to
edit it, and you can't do that when you're stuck in a messy
GUI.  You need to access it from a text-based command
prompt.  This is actually quite possible, and it gets easier
each time you do it:

1.  Boot from your Linux installation CD.  Go through the
    preliminary steps of the installation (nothing that
    involves overwriting anything), then press [Alt]-[F3].
    I think you need to press the [Alt] button that's on the
    left side of your keyboard.  This will put you into a
    command prompt (probably ``bash'') with full system
    access.

2.  Mount the filesystem that contains your Linux
    installation's ``/etc/inittab'' file.  To do this, you
    need to determine two things: where to mount the
    filesystem, and what partition to mount.  Don't get
    disheartened!  The first requirement is very easy: make
    a directory ``/mnt'':

    cd /
    mkdir mnt
    cd mnt

    So now you're in the directory ``/mnt''.  Now you need
    to find out the partition your Linux installation is in;
    probably ``/dev/hda1'' (since you implied that Linux is the
    only OS on the PC).  So mount it:

    mount -t auto /dev/hda1 .

    Notice that there actually was a space followed by a dot
    on the command line above.  Now you should be able to
    access all the files in your installation, including
    ``/etc/inittab''.  Note that because you've mounted it
    onto a temporary Linux system right now, this file will,
    for you, actually be ``/mnt/etc/inittab''.

3.  Now edit said file.  Most likely you'll only have the
    ``vi'' editor available to you, so invoke it thusly
    (assuming that you're still in /mnt):

    vi etc/inittab

    You should see the critical line I mentioned earlier
    somewhere near the top of the screen.  Move the text
    editing cursor to it using the arrow keys, and move the
    cursor so that it covers the ``5'' in that line.  Now,
    to replace the ``5'' with a ``3''.  Type

    r3

    and the replacement takes place.  Now to save and exit.
    Type

    ZZ

    and you are returned to the command prompt.

4.  Now you must unmount your Linux installation's
    filesystem and restart the computer.  Type these
    commands:

    cd /
    umount /mnt

    Then take out your installation CD and simply hit your
    system unit's reset button.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
