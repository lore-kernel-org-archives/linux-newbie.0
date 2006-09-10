From: Sandra McGrew <nurse1@longviewcomm.net>
Subject: CUPS Problems
Date: Sat, 09 Sep 2006 19:31:04 -0500
Message-ID: <edvmdk$b6c$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

        I'm not certain that I know how to explain this well enough so that someone
will be able to help me, but I will try... 
        I can't get cups to work... I've got a Lexmark Z611 printer... and it is
attached via usb to a Windows XP Home computer... 
                So, I think that I need to use SMB with this... but, am not certain how to
do it.. I have SMB4K installed and started, it shows no mounted shares... 
        There is an SMB folder in each person's directory  (home)... including
(root)... I see the share on the Windows XP Home computer and I see a
folder named SMB4K -> MOMO1 -> All Users
                            -> D (CD-ROM Drive)
                            -> print$ (Not certain what this is for or what it does???)

        One the Windows XP Home machine, I can see the Debian (Sarge) computer.. in
the Windows Explorer window it says, Mf.com -> debian1 server (Samba
3.0.14a-Debian)(Debian1)
                However, when I click on it to get in, it brings up a connectoid dialog
box... Connecting to Debian1... 
                User name: Mf.com\username  ( I think that's right???)
                Password: Password
        However, it tells me that I have to put it into a format like this;
                Examples:
                        User Name
                        username@domain
                        DOMAIN\username
That's the SAMBA problem, that I can't figure out...
I'm not certain, but I believe that if I could get SAMBA working right, then
the CUPS problem might be a little easier... 
                        I would appreciate any help that I can get...
                                        Most sincereley,
                                                        Dan

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
