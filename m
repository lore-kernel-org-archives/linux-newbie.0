From: "DogWalker" <forestiero@qwest.net>
Subject: Re: Adding to the PATH but not if already in $PATH
Date: Sat, 26 Feb 2005 11:40:15 -0800
Message-ID: <20050226192604.1405.90540@linux.local>
References: <200502261017.00466.forestiero@qwest.net>
	<200502261305.35751.eric@cisu.net>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1137088125=="
In-Reply-To: <200502261305.35751.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

MIME Message
--===============1137088125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

"Eric Bambach" <eric@cisu.net> said:

>On Saturday 26 February 2005 12:17 pm, you wrote:
>> I want to prepend a directory to my PATH in my $HOME/.bashrc and export the
>> result. But I only want it to happen once: iow, if a directory I want
>> prepended is already in the PATH, do not prepend it again.
>>
>

[...]

>sed and grep can help.
>
>echo $PATH | grep 'SOMEPATH'
>if [ $? == 0 ];then
> export PATH
>else
>        PATH=NEWPATH
>fi
>
>Check the login on that though, shouldnt be too hard.

Great!

Sorry about the double post: kmail did what I said not what
I meant.

--===============1137088125==--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
