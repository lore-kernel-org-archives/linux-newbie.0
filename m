From: Ray Olszewski <ray@comarre.com>
Subject: RE: Preventing signal interrupt in Kernel module code
Date: Fri, 13 Sep 2002 09:40:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020913092838.023090c0@celine>
References: <7C078C66B7752B438B88E11E5E20E72E0EF515@GENERAL.farsite.co.
 uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7C078C66B7752B438B88E11E5E20E72E0EF515@GENERAL.farsite.co.
 uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-newbie@vger.kernel.org

At 05:02 PM 9/13/02 +0100, Kevin Curtis wrote:
>Ok - I will refrain from posting technical questions here.  I did also post
>it to the linux-kernel mail list too.  It's just that sometimes, a question
>like mine is too trivial for them and gets ignored.  However, Ray is right,
>don't let postings like mine put you off sending in your questions too.
>
>By the way, even though I'm writing Kernel modules, I still have problems
>with my Mandrake distro too.  The latest being that sound has stopped
>working when I installed my network card.

Oh dear. I didn't mean to chastise you for your earlier posting. Especially 
since someone else did offer a suggestion about your problem. All I meant 
was what I actually said ... that your question was outside the range we 
typically deal with here. Please understand that I am no one special, just 
another member of the list. I wasn't trying to give people orders, just 
convey a sense of the list as it has operated historically.

As to your implied question ... when I experience similar problems, I 
usually find that they are pci bus problems, not Linux problems as such. 
(I've had both TV-tuner cards and NICs interfere with video cards, for 
example.) Observe during the early (pre-LILO or -GRUB or whatever you use) 
stages of the boot process to see if your BIOS still sees both the sound 
and NIC devices. If it doesn't, fiddle around ... try changing the slots of 
one of the other device (or just the NIC, if your mobo has on-board sound).

On the Linux end, see if the sound hardware still shows up in the 
"lspci"  listing. Check /proc/interrupts and /proc/ioports for a conflict 
(yes, I know Linux is supposed to share interrupts, but the reality is that 
it works imperfectly at best).

That's about all I can suggest without some details -- what sound card 
(what module), what NIC, and what "stopped working" means (what are you no 
longer able to do that you used to be able to do?).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
