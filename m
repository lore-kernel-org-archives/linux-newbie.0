From: Ray Olszewski <ray@comarre.com>
Subject: Re: Setting permissions via SSH upload to 777
Date: Wed, 13 Oct 2004 12:23:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041013120622.01f2ecc8@celine>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06> <000001c4b154$84fb7de0$500aa8c0@lanadmin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c4b154$84fb7de0$500aa8c0@lanadmin>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

At 02:43 PM 10/13/2004 -0400, Eve Atley wrote:

>When someone SSH's into our Redhat Linux box, all files that are
>uploaded are set to read-only. How can I set it so files are
>automatically set to 777, or 775 at the very least?

First, you shouldn't. It is NEVER smart, from a security standpoint, to 
create a *default* condition where a file is writable by someone other than 
its owner. There are special situations in which you need to do this, of 
course, but making it the system *default* for uploaded files -- especially 
for executables, but even for config files -- is asking for trouble.

Second, are you talking here about scp transfers or something else? On a 
case-by-case basis, a user of scp can (on the client end) use the -p flag 
to preserve permissions so they match the settings on the source system.

Third, here I find that scp transfers default to 755 (or 644 if the source 
file wasn't executable), a decent default setting. This is (or should be) 
derived from the default umask setting, which on my system is set in 
/etc/profile ... but can be modified on a user-by-user basis in 
/etc/.bash_profile. The method of setting these defaults varies bit among 
Linux distrbutions (I'm running Debian-Sid here), so Red Hat may use 
.profile or  .bashrc or some other variant for the user-level settings, and 
/etc/login.defs for the systemwide settings. This is also shell specific, 
so the details will be different if you don't use bash.

There is also a command-line app "umask" you can use to set this value for 
a user. The only man page I can find for umask is a section-2 (programming 
calls) entry, but it does explain how umask values relate to permissions.

BTW, I just saw your other message, and that respondant had write and 
execute mixed up. 555 is r-xr-xr-x; 666 is rw-rw-rw-.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
