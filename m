From: Ray Olszewski <ray@comarre.com>
Subject: Re: RH9 >W2000>INTERNET
Date: Sun, 07 Sep 2003 08:16:26 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030907080633.01f9d178@celine>
References: <Law10-F99Rlb17APqBt0002e8da@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Law10-F99Rlb17APqBt0002e8da@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:55 AM 9/7/2003 -0400, Nikola Vusovic wrote:
>Hello guys,
>
>since I have a problem to connectmy RH9 machine through W2000 machine to 
>Internet, would anybody tell me how to find a solution.

Well, asking here is a good way to start. But if you are using a Win2K host 
as your router, your problems are more likely to require Windows than Linux 
expertise, so you might want to look for a Win2K support list as well as a 
Linux one. Some people here have some familiarity with one or another 
version of WIndows, but this really is not the list to turn to for help 
configuring a Windows router.

As to the possible Linux side of the problem, a good start would be to 
report here the following:

1. Describe the actual problem you are having. What do you try and what 
error (or other failure) do you see)?

2. Provide this information about the configuration of the Linux host:
         complete, unedited output of "ifconfig -a"
         complete, unedited output of "netstat -nr"
         how you are assigning the Linux host its IP address and routing 
table (static? dhcp? something else?)

3. Describe the physical setup. How does the Linux host communicate with 
the Win2K host? How does the Win2K host communicate with the Internet? Does 
the WIn2K hot have 1 or 2 physical interfaces? 1 or 2 logical interfaces 
(IP addresses)?

4. Does the Linux host have a real (routable) IP address or a private 
(RFC1918) IP address that requires the Win2K host to NAT the Linux host's 
connection to the Internet? (The answer to #2 should indicate this, but it 
always pays to double check this one, I've found.) If the second, do you 
have the Win2K system set up properly both to route and to NAT (no, I don't 
know Win2K well enough to tell you how to do this)?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
