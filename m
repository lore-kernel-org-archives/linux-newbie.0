From: Eric Bambach <eric@cisu.net>
Subject: Re: Adding to the PATH but not if already in $PATH
Date: Sat, 26 Feb 2005 13:05:35 -0600
Message-ID: <200502261305.35751.eric@cisu.net>
References: <200502261017.00466.forestiero@qwest.net>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
In-Reply-To: <200502261017.00466.forestiero@qwest.net>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dog Walker <forestiero@qwest.net>
Cc: linux-newbie@vger.kernel.org

On Saturday 26 February 2005 12:17 pm, you wrote:
> I want to prepend a directory to my PATH in my $HOME/.bashrc and expo=
rt the
> result. But I only want it to happen once: iow, if a directory I want
> prepended is already in the PATH, do not prepend it again.
>
> Something like:
>
>    if "/home/dw/bin" not in $PATH ; then
>    PATH=3D/home/dw:$PATH
>    export PATH
>    fi
>
> The questions are: Is this the way one guards against multiple additi=
ons in
> subshells? Is there a way to check for a substring?

sed and grep can help.

echo $PATH | grep 'SOMEPATH'
if [ $? =3D=3D 0 ];then
 export PATH
else
        PATH=3DNEWPATH
fi

Check the login on that though, shouldnt be too hard.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
