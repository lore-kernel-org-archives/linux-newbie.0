From: "J." <mailing-lists@xs4all.nl>
Subject: RE: Simple script to set permissions on folders daily - write  script
 and cron it?
Date: Tue, 29 Mar 2005 19:02:53 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503291853430.1276-100000@hestia>
References: <C6FD667B200BDF4F964C1BA77B796CE20F5E4E@cnbmail2.city.north-bay.on.ca>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C6FD667B200BDF4F964C1BA77B796CE20F5E4E@cnbmail2.city.north-bay.on.ca>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 29 Mar 2005, Mike Turcotte wrote:

> That would be great if someone knew and could tell us how to set default
> permissions on a specific directory.

In the case if the directory is NOT a mount point:
This is done either from the command-line with `chmod' or if you want this
as a default, create a startup script in your /etc/init.d/
directory and make sure it's executed at the right run-level. 
[depends on your GNU/Linux distro]. That way everytime your
system starts-up the directory is set to the right permissions.

If the directory is a mountpoint, umount and remount it with the
permissions. /etc/fstab

If you use samba, php, apache or any other deamon program to access your
files set the file mask permissions in those programs correctly. And make
sure the user & group settings under which these programs run on your
system have the right permissions todo so.

> The info that has been given here has been a help though, so thanks
> everyone for helping me out!
> 
> Michael Turcotte
> Information Systems
> City of North Bay
> 200 McIntyre St. E
> PO Box 360
> North Bay, Ontario
> P1B 8H8
>  
> Mike.Turcotte@cityofnorthbay.ca
> http://www.cityofnorthbay.ca 
> 
> > -----Original Message-----
> > From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-
> > owner@vger.kernel.org] On Behalf Of Ray Olszewski
> > Sent: Tuesday, March 29, 2005 10:51 AM
> > To: linux-newbie@vger.kernel.org
> > Subject: RE: Simple script to set permissions on folders daily - write
> > script and cron it?
> > 
> > At 09:31 AM 3/29/2005 -0500, Mike Turcotte wrote:
> > >I am fairly new to the linux scene, and I am currently using Gentoo
> > >Linux. How exactly do I go about setting a global default umask value
> to
> > >set 777 permissions on a particular folder and its contents?
> > [...]
> > 
> > You don't. That's not how umask works. Instead, it sets default
> > permissions
> > for *all* files saved by a particular account (userid).
> > 
> > If you want to make this change for all userids (or all except root),
> do
> > it
> > in some file that sets the environment globally. For the bash shell,
> this
> > is probably /etc/profile (that's the standard one, and I imagine
> Gentoo
> > follows the standard). For example, my /etc/profile file contains this
> > line:
> > 
> >          umask 022
> > 
> > A umask is the (octal) inverse of permissions, so this sets the
> default
> > permissions to 755. For a default of 777, set the umask to 000.
> > 
> > If you want to make the change for specific accounts (userids), put a
> line
> > to reset the umash in that account's individual configuration file.
> This
> > varies in name a bitr more than systemwide files, but ones to look for
> are
> > (in the account's home directory) .profile, .bash_profile, or .bashrc
> (use
> > "ls -a" to display filenames that begin with a .).
> > 
> > I don't know of a way to set default permissions for a specific
> directory
> > only, which is why I didn't discourage Eve from taking the approach
> she
> > described for her problem. Perhaps someone else does, though ... we'll
> > have
> > to wait and see.
> > 
> > 
> > 
> > -
> > To unsubscribe from this list: send the line "unsubscribe
> linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

Tuesday, March 29 18:53:43



--
http://www.rdrs.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
