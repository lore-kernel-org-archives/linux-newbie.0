From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Minicom and Modem
Date: Sun, 2 Feb 2003 09:38:39 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020209383900.19519@unix.pa3gcu>
References: <200302011710.46462.sotl155360@earthlink.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302011710.46462.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Robers _ SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

On Saturday 01 February 2003 22:10, Frank Robers _ SOTL wrote:
> Hi All
>
> Sorry for the posting. I have tried for two weeks to find my previous set
> of Minicom notes but.
>
> Anyway hopefully some nice person will help.
>
> I have this computer connected to another computer by null modem cable.
> This is not the first time for this so I know that the other computer is
> working correctly but on this box I reinstalled the system after a major
> screw up. Apparently that was when I lost my minicom notes.
>
> Anyways I have two serial port possibilities /dev/ttyS0 and /dev/ttyS1.
> If memory serves me correctly I used ttyS0 previously but either way I have
> tried both.

IIRC, most distro's link /dev/modem to /dev/ttyS1 as default, or dont set it 
at all.

>
> The problem is that minicom does not see the serial port and I never
> establish a connection.

Either you dont have a link to the correct comport in /dev or its set 
pointing to the wrong device.

If its com1 then do as root;
cd /dev
rm modem
ln -s ttyS0 modem

>
> Again if I recall correctly I had to issue a command from the terminal to
> initiate so that minicom would see the serial port but I can not recall the
> command.

minicom -s ?

Set minicom up properly and make sure its now using /dev/modem, ?

>
> Damn I wish I had my notes back.
>
> Anyway hopefully some one will know what I am talking about and can help.
>
> Thanks
>
> Frank
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
