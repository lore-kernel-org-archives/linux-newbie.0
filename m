From: Amin <raihan@citech-bd.com>
Subject: Re: cleaning up disk space
Date: Mon, 09 Jun 2003 21:24:49 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <oprqiafnb7yuy227@mail.citech-bd.com>
References: <AKEILINJHJBKDJLADJENCEIHDHAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AKEILINJHJBKDJLADJENCEIHDHAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 09 Jun 2003 08:50:31 -0600, Anna Grace Zapata <azapata@du.edu> 
wrote:

> Hello all,
>
> I tried patching my Linux box with the latest RPMs.  However, the machine
> said that there was not enough room.  How should I proceed?  How do I go
> about knowing how much disk space is available and how to clean up the
> machine to make more room.

Available disk space:  Use the `df' command.  E.g.:

$ df -h
Filesystem            Size  Used Avail Use% Mounted on
/dev/hda6             6.5G  3.6G  2.6G  58% /
/dev/hda3             1.8G   39M  1.6G   3% /boot
none                   61M     0   61M   0% /dev/shm

The ``-h'' option is to get human-readable sizes (in MB and GB).

Cleaning up the machine:  Uninstall as many packages as you can do without. 
 All sorts of things can go, from big stuff like GNOME or KDE to many far- 
flung apps like web server, Samba, print servers, mail servers, many ``eye- 
candy'' graphical programs.  The list goes on.  You might like to consult 
with any others who use the computer, though.

Regards,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
