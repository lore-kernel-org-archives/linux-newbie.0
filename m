From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Trying to get GUI'ed
Date: 23 Oct 2002 10:29:22 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035365362.6443.11.camel@zebra.vil.ite.mee.com>
References: <3DB5AE79.9087C859@gelm.net> 
	<5.1.0.14.1.20021022154355.024ac490@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021022154355.024ac490@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Wow, what a superb answer. I think you passed the exam... :)

May I add this summary for people who really know nothing about
programming (yet...). This is how it was first explained to me and it
helped me soooo much later on:

Approximately: 
X (the 'GUI') draws boxes on the screen.
The window manager draws pretty edges around the boxes and lets you move
them around.
The desktop environment gives you things to put inside the boxes and a
whole load of other ways to ask for new boxes, and also ways to make
things like the background look pretty.



Paul.

On Wed, 2002-10-23 at 00:16, Ray Olszewski wrote:
> I looked around for a bit to find a good HowTo or FAQ that addressed the 
> distinctions among X itself, a Window Manager, A Desktop, and  a Desktop 
> Environment. I found nothing really good, though these links are the best 
> of the lot I found:
> 
>          http://tldp.org/HOWTO/XWindow-Overview-HOWTO/index.html
>          http://tldp.org/HOWTO/XWindow-User-HOWTO/index.html
>          http://www.plig.org/xwinman/intro.html
> 
> Before I take a crack at James' Final Exam questions, let me address a more 
> direct question. Chuck wrote:
> 
>  > Sawfish, twm, Gnome, KDE, fvwm, fvwm95, are meaningless to me.
>  > I don't see the difference. :-|
>  >  Why cannot any GUI application run on any 'window'?
> 
> The answer is that any GUI (Graphical User Interface) is an illusion, a 
> techie version of trompe l'oeil. Applications need to communicate with the 
> GUI they run under, and they do it by making calls to shared libraries 
> (dlls in the WinXX world). These calls invoke procedures that work with the 
> GUI itself to translate real events, like the physical movement of a mouse, 
> typing on a keyboard, and various events generated internally by hardware 
> and applications, into the visual illusion (moving the mouse pointer, 
> selecting windows or text, etc.) you see on the screen.
> 
> If a particular GUI application does not run correctly in some particular 
> GUI environment, that is because it makes some system calls that this GUI 
> environment does not support.
> 
> You don't see support failures (much) in Microsoft Windows, because it has 
> a single, unified API (Aplications Programming Intefface) that everyone 
> doing applications writes to ... or at least one API per major version of 
> Windows. Linux (and Unix) is subject to less central control, so there are 
> competing APIs around that don't always mesh exactly.
> 
> OK. Now to James' questions. There are really 4 distinct concepts, not 3 
> ... a Desktop is a small part of a Window Manager, while a Desktop 
> Environment is quite different and more elaborate (and is probably what 
> James meant when he wrote "desktop" in the exam questions). The following 
> are first drafts of answers; I hope others will suggest refinements that 
> clarify without turning what should be succinct responses into tomes.
> 
> 1. X or X Window (not X Windows or xwindows) is a server that controls the 
> basics of a video display -- it provides a standard API that allows control 
> of the hardware of the video card and the display, as well as other 
> hardware like the keyboard and a pointing device. It gets customized on the 
> hardware side, and on the application side it provides only a single, 
> low-level API for dealing with the hardware. The only X server for Linux 
> (the only free and Open Source one, that is) is xFree86. To run X, you must 
> run this.
> 
> 2. A Window Manager provides a "wrapper" that delivers additional 
> functionality to X. It handles mid-level stuff, mainly offering a better 
> API for drawing windows, detecting events like mouse clicks, adding pre- or 
> user-defined "widgets" (close to what Microsoft calls tools in VB and Apple 
> used to call resources) that developers can uswe when drawing windows on 
> the screen. Typically, a Window Managers also includes menus (to launch 
> applications and to modify the display) and the possibility of multiple 
> desktops (analogous to the virtual terminals available with the text 
> display). Examples of Window Managers are Sawfish, Blackbox, fvwm, fvwm, 
> twm, Ice, Enlightenment, and WindowMaker. To run X successfully, you 
> *almost* must run a Window Manager.
> 
> 3. A Desktop Environment provides a suite of high-level services to an X 
> user and an X developer. A Desktop Environment has two, separable parts:
> 
>          A. A set of applications that provide user services. Examples are 
> visual file manager and icon-based or tray-based application launchers.
> 
>          B. A high-level API that provides advanced features to developers.
> 
> The two principal Desktop Environments are Gnome (with the associated API 
> gtk) and KDE (with the associated API qt).
> 
> You can run X quite successfully without running the user-services part of 
> any Desktop Environment; whether you need to run one or more APIs depends 
> on the specific applications you want to run ... though there are 
> occasional failures, for the most part, the APIs will work with any Window 
> Manager.
> 
> At 05:14 AM 10/22/02 -0500, James Miller wrote:
> >On Tue, 22 Oct 2002, Chuck Gelm wrote:
> > >
> > >  I have RedHat8.0 ('tho I see that this distro is not liked! :-|).
> > > I'll try a few GUI install choices and what I can learn.
> > >
> > > Although I am still confused about who is doing what,
> > > with which, and to whom.
> > >
> > > IOW, I do not understand the difference among:
> > > Xwindows, Gnome, & Sawfish.
> > >
> > >  To me, windows is windows, windows is what a GUI application needs
> > > for I/O; a text console is what a text console application needs.
> > > Sawfish, twm, Gnome, KDE, fvwm, fvwm95, are meaningless to me.
> > > I don't see the difference. :-|
> > >  Why cannot any GUI application run on any 'window'?
> > > Why is not Xwindows a 'window manager'?
> > > Why is not fvwm a 'Xwindow'?
> > >
> >
> >I'm kind of confused on these fundamental matters, too, though posts on
> >this thread have been helping clarify things, or maybe just helping me to
> >ask the right questions. The right questions being, in my mind:
> >
> >1) what is "X" or "xwindows"? (be sure to address in your answer the
> >relation of this entity to 2 other entities with which it can be easily
> >confused - namely a "window manager" and a "desktop.")
> >
> >2) what is a window manager? (be sure to address in your answer the
> >relation of this entity to 2 other entities with which it can be easily
> >confused - namely "X" or "xwindows" and a "desktop.")
> >
> >3) what is a "desktop"? (be sure to address in your answer the relation of
> >this entity to 2 other entities with which it can be easily confused -
> >namely "X" or "xwindows" and a "window mananger.")
> >
> >Anyone care to take a crack at these?
> >
> >James
> >
> >-
> >To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> >the body of a message to majordomo@vger.kernel.org
> >More majordomo info at  http://vger.kernel.org/majordomo-info.html
> >Please read the FAQ at http://www.linux-learn.org/faqs
> 
> --
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> -------------------------------------------------------------------------------
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
