From: Ray Olszewski <ray@comarre.com>
Subject: Re: Bash will not start in Terminals
Date: Thu, 10 Mar 2005 18:55:46 -0800
Message-ID: <5.1.0.14.1.20050310183928.0293ee08@celine>
References: <200503100407.j2A47Fla002077@skyinet.net>
Mime-Version: 1.0
In-Reply-To: <200503100407.j2A47Fla002077@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:07 PM 3/10/2005 +0800, Peter H. wrote:
>Hi,
>
>Slackware10 kernel 2.4.26
>
>For me unknown reason suddenly bash will not start in terminals.

Do you really mean that the terminal sits open but does not accept any 
input? Or do you, just possibly, mean that bash starts (you get a prompt 
and can enter commands) but it does not read its config files the way you 
expect it to?

>Therefore no
>PSI is set

PS1, perhaps?

>and commands I have in ~/.bashrc are not known unless I type bash
>in
>xterm after which PSI is set as well.

If you can type "in xterm", then *some* shell is running. If you really 
don't know what it is, start one up, then use a different one, or a console 
or remote session, to check the process list to see what shell is running.

BTW, it should also work just to run .bashrc . You might see if it does.

>If I open xterm with: "xterm -e su -l"

How are you entering this? Do you mean in another, working xterm?

Are you already root when you do this? As a non-root user, my system will 
not let me open an xterm with both logging and su ... probably to protect 
the root password.

I think this works because the bash invoked by su is not a login shell. See 
below.

>it opens with bash, w/o the -l flag
>there is no bash.
>
>How to resolve?

Is this true for all users or a specific subset of users? In particular, is 
root different from an ordinary user?

What you are seeing may be differences in behavior between login and 
non-login instances of bash. A login instance expects to run /etc/profile, 
./.bash_profile, ./.bash_login, and ./.profile ... but not ./.bash_rc 
(though it is not unusual for one of these other files to cause .bashrc to 
execute).

Overall, what you are describing sounds like a situation where bash is 
starting but is not getting some fo the settings you want it to have. This 
may mean a problem in /etc/profile or one of the user-specific bash-login 
files I listed above.

Without a followup from you, it is hard to be more specific. But all of 
this, perhaps supported by your reading the man pages for bash and xterm, 
may be enough to get you to a solution.

Good luck.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
