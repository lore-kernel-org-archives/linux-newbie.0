From: "Robert S" <robert_schmidli@hotmail.com>
Subject: Can't get into WM (KDE, TWM etc) from KDM or XDM
Date: Fri, 7 Nov 2003 21:06:53 +1100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bofqtj$cvu$1@sea.gmane.org>
Reply-To: "Robert S" <robert_schmidli@hotmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm running Slack 9.1.  Since I recently upgraded from slack 9.0 to my
current version, I have no longer been able to get from kdm into any window
managers (kde, twm etc).  My monitor goes momentarily blank then returns to
the KDM/XDM prompt.

I can however get into my WM using "startx" and I can also get into kdm with
no problems (I am using konqueror to do this).  I therefore assume that my
/etc/X11/XF86Config is OK.

my /root/.xsession_errors and /home/me/.xsession_errors do not display
anything - ie presumably no errors.

My /var/log/XFree86.0.log does not show any errors (ie no (EE)) but there
are a few warnings.

/var/log/kdm.log also does not show any errors.

If I enter # startkde I get the following message:

xset:  unable to open display ""
xset:  unable to open display ""
xset:  unable to open display ""
xsetroot:  unable to open display ''
startkde: Starting up...
ksplash: cannot connect to X server
kdeinit: Aborting. $DISPLAY is not set.
Warning: connect() failed: : No such file or directory
ksmserver: cannot connect to X server
startkde: Shutting down...
Warning: connect() failed: : No such file or directory
Error: Can't contact kdeinit!
X11GlobalComm: Can't connect to the XServer - Initial references won't
work.
bad md5 secret-cookie obtained from Arts::X11GlobalComm - replacing it
startkde: Running shutdown scripts...
startkde: Done.

Can anybody help me out here?

Robert S.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
