From: Ray Olszewski <ray@comarre.com>
Subject: RE: Simple script to set permissions on folders daily - write
  script and cron it?
Date: Tue, 29 Mar 2005 07:51:19 -0800
Message-ID: <5.1.0.14.1.20050329074310.01ff0690@celine>
References: <C6FD667B200BDF4F964C1BA77B796CE20F5E4A@cnbmail2.city.north
 -bay.on.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C6FD667B200BDF4F964C1BA77B796CE20F5E4A@cnbmail2.city.north
 -bay.on.ca>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:31 AM 3/29/2005 -0500, Mike Turcotte wrote:
>I am fairly new to the linux scene, and I am currently using Gentoo
>Linux. How exactly do I go about setting a global default umask value to
>set 777 permissions on a particular folder and its contents?
[...]

You don't. That's not how umask works. Instead, it sets default permissions 
for *all* files saved by a particular account (userid).

If you want to make this change for all userids (or all except root), do it 
in some file that sets the environment globally. For the bash shell, this 
is probably /etc/profile (that's the standard one, and I imagine Gentoo 
follows the standard). For example, my /etc/profile file contains this line:

         umask 022

A umask is the (octal) inverse of permissions, so this sets the default 
permissions to 755. For a default of 777, set the umask to 000.

If you want to make the change for specific accounts (userids), put a line 
to reset the umash in that account's individual configuration file. This 
varies in name a bitr more than systemwide files, but ones to look for are 
(in the account's home directory) .profile, .bash_profile, or .bashrc (use 
"ls -a" to display filenames that begin with a .).

I don't know of a way to set default permissions for a specific directory 
only, which is why I didn't discourage Eve from taking the approach she 
described for her problem. Perhaps someone else does, though ... we'll have 
to wait and see.

         

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
