From: Ray Olszewski <ray@comarre.com>
Subject: Re: CUPS Problems
Date: Sat, 09 Sep 2006 18:07:49 -0700
Message-ID: <45036565.2090908@comarre.com>
References: <edvmdk$b6c$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <edvmdk$b6c$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Sandra McGrew wrote:
>         I'm not certain that I know how to explain this well enough so that someone
> will be able to help me, but I will try... 
>         I can't get cups to work... I've got a Lexmark Z611 printer... and it is
> attached via usb to a Windows XP Home computer... 
>                 So, I think that I need to use SMB with this... but, am not certain how to
> do it.. I have SMB4K installed and started, it shows no mounted shares... 
>         There is an SMB folder in each person's directory  (home)... including
> (root)... I see the share on the Windows XP Home computer and I see a
> folder named SMB4K -> MOMO1 -> All Users
>                             -> D (CD-ROM Drive)
>                             -> print$ (Not certain what this is for or what it does???)
> 
>         One the Windows XP Home machine, I can see the Debian (Sarge) computer.. in
> the Windows Explorer window it says, Mf.com -> debian1 server (Samba
> 3.0.14a-Debian)(Debian1)
>                 However, when I click on it to get in, it brings up a connectoid dialog
> box... Connecting to Debian1... 
>                 User name: Mf.com\username  ( I think that's right???)
>                 Password: Password
>         However, it tells me that I have to put it into a format like this;
>                 Examples:
>                         User Name
>                         username@domain
>                         DOMAIN\username
> That's the SAMBA problem, that I can't figure out...
> I'm not certain, but I believe that if I could get SAMBA working right, then
> the CUPS problem might be a little easier... 
>                         I would appreciate any help that I can get...
>                                         Most sincereley,
>                                                         Dan

You have probably set up the Debian host to require authentication for 
SMB connections. You do this in /etc/samba/smb.conf . If your 
environment is sufficiently secure that you don't need this protection, 
the easy solution is to change the setting in this way:

	;   security = user
	security = share

Then set up at least one public share to test that this will work. An 
example from my server is:

	[shared_video1]
	comment = edited video - first volume
	writable = yes
	locking = no
	path = /home/shared_video1
	public = yes

(You might want to change the above to writable=no).

Then re-HUP or restart samba (e.g., as root enter "/etc/init.d/samba 
restart").

Even if you need to use authentication, I'd recommend this as a test 
step, to make sure all else is working right. Then add authentication 
back in. smb.conf has a section for authentication, but to help you with 
that, I'll need to see yours (it's probably a newer version than mine, 
and the format tends to change a bit).

PS - I tried to reply to your earlier query too, but the list rejected 
my reply as SPAM. I don't know why. Seeing if this response gets through 
may be instructive in that regard.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
