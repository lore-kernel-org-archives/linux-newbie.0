From: Kurt Sys <kurt.sys@UGent.be>
Subject: Re: windowsNT-network
Date: Wed, 22 Oct 2003 09:38:14 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16278.13286.690977.886453@ksys.ugent.be>
References: <20031021.184423.17394.366953@webmail13.lax.untd.com>
Reply-To: Kurt Sys <kurt.sys@UGent.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031021.184423.17394.366953@webmail13.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

I always 'forget' that in this list 'reply' doesn't mean 'reply to the
list'. So, here's some follow-up of my mail... And my additional
question...


Hi,

thanks... this works fine. I didn't use the 'mask'-things in the right
way. Anyway, major 'problem' solved. I still have one more question. I
would like to put some things in a (global) startup-script. I think if
I use /etc/profile and use a login manager (not everyone likes to log
on using a text console), it'll not work (since 'profile' is the
startup-script for bash. So, I should change 'Xsession'. I'm not very
sure where to put a lines like:

mount //labmetserver/common /mnt/labmet/common -o uid=$USER,gid=staff,dmask=1740,fmask=1740,credentials=$HOME/.smbpasswd
mount //labmetserver/information /mnt/labmet/information -o uid=root,gid=staff,dmask=1754,fmask=1754,credentials=$HOME/.smbpasswd
[...]

in the script. (I would like to have it this way, so the drives are
not mounted when nobody is using the computer; I actually don't know
why, it just gives me a 'safer' feeling. Now, I log onto the server
with administrator password. If I could put things in a login-script,
everyone can use their own login and password and put it in
'~/.smbpasswd'.)

tnx,
Kurt.




In Debian, Xsession looks like this:
-----
#!/bin/sh
#
# /etc/X11/Xsession
#
# global Xsession file -- used by display managers and xinit (startx)

set -e

message () {
  # pretty-print messages of arbitrary length echo "$*" | fold -s -w
  ${COLUMNS:-80} >&2;
}

message_nonl () {
  # pretty-print messages of arbitrary length (no trailing newline)
  echo -n "$*" | fold -s -w ${COLUMNS:-80} >&2;
}

errormsg () {
  # exit script with error message "$*" exit 1;
}

internal_errormsg () {
  # exit script with error; essentially a "THIS SHOULD NEVER HAPPEN"
  message message "$*" message "Please report the package name,
  version, and the text of the" \
          "above error message(s) to <debian-x@lists.debian.org>.";
  exit 1;
}

run_parts () {
  # until run-parts --noexec is implemented if [ -z "$1" ]; then
    internal_errormsg "internal run_parts called without an argument"
  fi if [ ! -d "$1" ]; then
    internal_errormsg "internal run_parts called, but $1 does not
  exist or is not a directory."  fi for F in $(ls $1); do
    if expr "$F" : '[[:alnum:]_-]\+$' > /dev/null 2>&1; then
      if [ -f "$1/$F" ]; then
        echo "$1/$F" fi fi done;
}

# initialize variables for use by all session scripts

OPTIONFILE=/etc/X11/Xsession.options

SYSRESOURCES=/etc/X11/Xresources
USRRESOURCES=$HOME/.Xresources

SYSSESSIONDIR=/etc/X11/Xsession.d
STARTUP=$HOME/.xsession
ALTSTARTUP=$HOME/.Xsession
ERRFILE=$HOME/.xsession-errors

# attempt to create an error file; abort if we cannot
if touch $ERRFILE 2> /dev/null && [ -w $ERRFILE ]; then
  chmod 600 "$ERRFILE"
elif ERRFILE=$(tempfile 2> /dev/null); then
  if ! ln -sf "$ERRFILE" "${TMPDIR:=/tmp}/xsession-$USER"; then
    message "Xsession: unable to symlink \"$TMPDIR/xsession-$USER\"
    to" \
             "\"$ERRFILE\"."  fi
else
  errormsg "Xsession: unable to create X session log/error file.
  Aborting."
fi

exec > "$ERRFILE" 2>&1

# sanity check; is our session script directory present?
if [ ! -d "$SYSSESSIONDIR" ]; then
  errormsg "Xsession: no $SYSSESSIONDIR directory found.  Aborting."
  >&2
fi



# use run-parts to source every file in the session directory; we
# source instead of executing so that the variables and functions
# defined above are available to the scripts, and so that they can
# pass variables to each other
SESSIONFILES=$(run_parts $SYSSESSIONDIR)
if [ -n "$SESSIONFILES" ]; then
  for SESSIONFILE in $SESSIONFILES; do
    . $SESSIONFILE done
fi

exit 0

# vim:ai:et:sts=2:sw=2:tw=80:
-----


and '$SYSSESSIONDIR' (/etc/X11/Xsession.d) contains:

-----
$ ls -l
total 20
-rw-r--r--    1 root     root         1361 Mar 19  2003 20xfree86-common_process-args
-rw-r--r--    1 root     root          329 Mar 19  2003 30xfree86-common_xresources
-rw-r--r--    1 root     root          933 Mar 19  2003 50xfree86-common_determine-startup
-rw-r--r--    1 root     root          449 Mar 19  2003 90xfree86-common_ssh-agent
-rw-r--r--    1 root     root           18 Mar 19  2003 99xfree86-common_start
$ 
-----





--
Mail from beolach@juno.com
sent on Wednesday October 22 2003 at 01:43 (GMTGMT):

   
   Try with fmask=1777,dmask=1777 - 0000 gives me the same as you see
   below, 1777 gives everyone all permissions.
   
   If that doesn't work, you should be able to put your mount command
   (w/ -o uid=xxx) into a login script.  There are several login
   scripts you can choose from, depending on what shell you use etc.
   Some standard ones are "/etc/profile" (global for all users; this
   is where path & stuff is set); "~/.profile", "~/.bash_profile" and
   "~/.bashrc" for personal/individual logins.
   
   But I think there are a number of problems with doing the mount in
   a login script.  You would need to set either the login script or
   smbmount setuid root; you would need seperate mount points for each
   user; only the user who's script mounted the smb share would have
   access; etc.  Some of these may not be problems, depending on what
   you want, but if I'm understanding your goal correctly, it would be
   much simpler to get the permissions in fstab working right.
   
   Wish you luck, Conway S. Smith
   
   
   -- Kurt Sys <kurt.sys@UGent.be> wrote: Hi,
   
   thanks for your reply. However, this doesn't work (I remember I
   used to try it, but for one reason or another, it wouldn't work,
   I'm guessing, but it might be some 'Debian-security' thing?) I
   tried again...
   
   -----
   # /etc/fstab: static file system information.
   #
   # <file system> <mount point> <type> <options> <dump> <pass>
   /dev/hda5 / ext2 errors=remount-ro 0 1 /dev/hda3 none swap sw 0 0
   proc /proc proc defaults 0 0 /dev/fd0 /floppy auto users,noauto 0 0
   /dev/cdrom /cdrom iso9660 ro,users,noauto 0 0 /dev/hda6 /usr ext2
   defaults 0 2 /dev/hda7 /var ext2 defaults 0 2 /dev/hda8 /tmp ext2
   defaults 0 2 /dev/hda9 /boot ext2 defaults 0 2 /dev/hda10 /root
   ext2 defaults 0 2 /dev/hda11 /home ext2 defaults 0 2 /dev/hda2
   /mnt/winxp ntfs umask=0022 0 0 /dev/sda4 /mnt/zip vfat users,noauto
   0 0
   
   //labmetserver/common /mnt/labmet/common smbfs
   dmask=0000,fmask=0000,noauto,credentials=/etc/samba/smbpasswd 0 0
   //labmetserver/information /mnt/labmet/information smbfs
   dmask=0000,fmask=0000,noauto,credentials=/etc/samba/smbpasswd 0 0
   //labmetserver/students /mnt/labmet/students smbfs
   dmask=0000,fmask=0000,noauto,credentials=/etc/samba/smbpasswd 0 0
   //labmetserver/researchers /mnt/labmet/researchers smbfs
   dmask=0000,fmask=0000,noauto,credentials=/etc/samba/smbpasswd 0 0
   -----
   
   I log on (as root) and 'mount /mnt/labmet/common'. The drive is
   mounted:
   
   -----
   kurtpjoeter:/mnt/labmet# mount common Unknown parameter
   encountered: "passdb backend" Ignoring unknown parameter "passdb
   backend" 1639: session request to LABMETSERVER failed (Called name
   not present) kurtpjoeter:/mnt/labmet# ls -al total 24 drwxr-xr-x 6
   root root 4096 Mar 19 2003 .  drwxr-xr-x 6 root root 4096 Sep 4
   00:23 ..  drwxr-xr-x 1 root root 4096 Oct 17 16:36 common
   drwxrwxrwx 2 root root 4096 Mar 19 2003 information drwxrwxrwx 2
   root root 4096 Mar 19 2003 researchers drwxrwxrwx 2 root root 4096
   Mar 19 2003 students kurtpjoeter:/mnt/labmet#
   -----
   
   but no file/directory in 'common' has write permissions for
   'groups' or 'other users'. However:
   
   -----
   kurtpjoeter:/mnt/labmet# umount common/ kurtpjoeter:/mnt/labmet#
   mount common -o uid=kurt Unknown parameter encountered: "passdb
   backend" Ignoring unknown parameter "passdb backend" 2209: session
   request to LABMETSERVER failed (Called name not present)
   kurtpjoeter:/mnt/labmet# ls -al total 24 drwxr-xr-x 6 root root
   4096 Mar 19 2003 .  drwxr-xr-x 6 root root 4096 Sep 4 00:23 ..
   drwxr-xr-x 1 kurt root 4096 Oct 17 16:36 common drwxrwxrwx 2 root
   root 4096 Mar 19 2003 information drwxrwxrwx 2 root root 4096 Mar
   19 2003 researchers drwxrwxrwx 2 root root 4096 Mar 19 2003
   students kurtpjoeter:/mnt/labmet#
   -----
   
   In this case, 'kurt' has write access to the drive. It would be
   great if I can put such thing in a login-script. This would also
   allow me to give other permissions to the drives, depending on
   which user logs on.
   
   Actually, I don't really want other users to be able to smbmount,
   but they should be able to access the 'shared' drives on the
   server. Some have more permissions than other ones, but this is not
   the main problem now... I should simply be able to give a user
   write permissions to a drive when he/she logs on.
   
   Oh yeah, the 'session request to LABMETSERVER failed'-thing... I
   already posted that to the list (I guess this one) and the
   conclusion seemed to be 'do not bother as long as it works'.
   
   tnx, Kurt.
   
   
   
   --
   Mail from beolach@juno.com sent on Tuesday October 21 2003 at 04:16
   (GMTGMT):
   
      
      You should be able to set it up in the fstab to give all users
      rw permissions.  You will probably just need to set the fmask
      and dmask to values you want (see the mount(8) & smbmount(8) man
      pages).
      
      <qoute>
        fmask=<arg>
          sets the file mask. This determines the permissions that
          remote files have in the local filesystem. The default is
          based on the current umask.
        dmask=<arg>
          sets the directory mask. This determines the permissions
          that remote directories have in the local filesystem. The
          default is based on the current umask.
      </qoute>
      
      Also, you may need to chmod smbmount setuid root; IIRC smbmount
      has to be run as root, regardless of fstab & other config files.
      But this should only be done if you want/need nonroot users to
      be able to mount/umount the remote smb filesystem(s).
      
      Hope this helps, Conway S. Smith
      
      -- Kurt Sys <kurt.sys@UGent.be> wrote:
      >Hi all,
      >
      >I'm having the following situation here: There is a windowsNT
      >network available. I can connect to the network. However, only
      >'root' can write to the NT-disk. So, I have to connect as
      >'another user':
      >
      >smbmount //labmetserver/common /mnt/labmet/common -o
      >>credentials=/home/kurt/.smbmountcred,uid=kurt
      >
      >In this way, I connect to the server, with 'kurt' as the user,
      >so 'kurt' can write to the NT-disk. So all this works, what's
      >my problem?  That it only works if I am root. I would like all
      >users to be able to connect to the server and read and write. I
      >thinking of something like, if someone logs in on linux, the
      >connection is made automatically. Can I put something like:
      >
      >smbmount //labmetserver/common /mnt/labmet/common -o
      >>credentials=$HOME/.smbmountcred,uid=$USER
      >
      >in some script (which runs with 'root'-permissions). Or even
      >better, if '$HOME/.smbmountcred exists, it should use it,
      >otherwhise, it should use a general 'smbmountcred'-file
      >(somewhere in /etc/smbmount)?  I'm using Debian sarge,
      >linux-kernel 2.4.20, smbmount version
      >2.2.3a-14.
      >
      >Untill now, I did put it in fstab, but in that case, I logged
      >in onto the windowsNT-server as root, so no user had any write
      >permission.
      >
      >
      >tnx, Kurt.
      
   
   
   ________________________________________________________________
   The best thing to hit the internet in years - Juno SpeedBand!  Surf
   the web up to FIVE TIMES FASTER!  Only $14.95/ month - visit
   www.juno.com to sign up today!

-- 
To live a creative life, we must lose our fear of being wrong.
		-- Joseph Chilton Pearce
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
