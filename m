From: "Riley Williams" <Riley@Williams.Name>
Subject: Re: Terminal problems
Date: Tue, 20 May 2003 07:21:45 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAAECBDBAA.Riley@Williams.Name>
References: <Pine.LNX.4.21.0305201116570.7186-100000@deepesh.india.tejasnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0305201116570.7186-100000@deepesh.india.tejasnetworks.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: deepesh@india.tejasnetworks.com
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Hi Deepesh.

 >>> Please let me know the basic differences between the
 >>> VT102 and the ANSI terminals.

 >> ANSI was based on the VT100 (predecessor to the VT102).
 >> The VT102 has a couple of extensions not in ANSI.
 >> Nothing really show-stopper for most people. ANSI is,
 >> however, something of a least-common denominator. Just
 >> about anything that supports vt102 (or vt200) protocols
 >> should also work if you say that it's ANSI.

 > There is a strange problem that I am facing, when I am
 > connecting the diag port of my card to the minicom ttyS0
 > of my host machine, and the terminal settings are ANSI,
 > I do not have any problem. But when the terminal settings
 > are VT102, I get strange characters on the screen. That
 > is the reason I wanted to know the difference between the
 > two.
 >
 > I think that the card is somehow sending some control
 > characters which affects the terminal settings in VT102,
 > but the ANSI doesn't support those extra features because
 > of which there is no problem.
 >
 > Please give me some information how the control character
 > related stuff works on terminals. This might help me
 > solve my problem.

Part of the ANSI protocol, and thus also of the VT100 and
VT102 protocols, is the ability to switch between the
standard and alternative character sets. However, by
default, that alternative character set is undefined.

My understanding is that the definition of ANSI used in Linux
disables this ability, but it is still implemented in most
definitions of VT100 and VT102.

To make use of this facility, you need to actually define
the alternative character set to use, otherwise you get a
set of weird characters defined by the current contents of
a random area of system memory - your "weird and wonderful"
characters sound just like that.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.481 / Virus Database: 277 - Release Date: 13-May-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
