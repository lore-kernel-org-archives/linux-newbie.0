From: Peter <heisspf@skyinet.net>
Subject: Re: Gnome, KDE won't Open
Date: Fri, 13 Aug 2004 17:21:01 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040813092101.9DC3E3ECE2@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Laurence Pithie <laurence@pithie.eclipse.co.uk>
Cc: linux-newbie@vger.kernel.org


On Thu, 12 Aug 2004, Peter wrote:

>> Hi,
>>
>> RedHat 9.1, Kernel 2.2.20-20, 118 KRAM, 435 K swap

should read Kernel 2.4.20-20

>>
>> On my motherboard the connection for the keyboard died for which reason I
>> could no longer boot.

>The reason for it dying may also be important here, possibly a mobo prob??

Yes, it is a mobo problem.

>>
>> I bought an USB adopter, connected keyboard and mouse to it and I could boot
>> again with kb and mouse working properly.

>So can u beg borrow (or steal <g>) a keyboard n mouse that connects to the
>native ports. If you can do that post the  results

I just have to connect to the old outlets and, see above no more booting.

>>
>> However, now I cannot start gnome nor kde from the concole. Both crash just
>> before the panels should open. I can start twm and from there open
>> applications like abiword, gnumeric. When I open gnome-panel or kicker from
>> within twm causes a crash when then trying to open an application from those
>> panels.

>I'm slightly surprised you can get X running at all <g> It should be
>looking for a keyboard and mouse attached where they were before 8-() or
>did you reconfigure it?

Yes I reconfigured to have USB support for hid, kb and mouse and changed to 
the appropriate settings in XF86Config.

>>
>> Opening gnome or kde via gdm or xdm causes a reboot.

>That's what I would expect <g>

>
>> Has this strange behavior anything to do with this USB connection of the
>> kb/mouse and what would be needed then to correct it or is it just a
>> coincidence meaning further trouble?

>impossible to say with any degree of certainty. Would need your error
>messages and configs plus a clear description of what has changed between
>your prior configuration and the current configuration. How were keyboard
>and mouse attached before? ps2 mouse or usb ditto for keyboard. Your
>XF86Config and the error messages would help enormously. dmesg and XF86
>logs would help too.

Kb and mouse were attached to the standard outlet of the mobo P6STMT which 
seems to be of poor quality. It gave problems before with the SIS630ET 
chipset, then the printer(whatever) mobo stopped working necessitating me to 
buy a printer card and now the kb went puff. Before that last event happened 
the machine was made the house training computer for the kids and wifes for 
which reason there is no Internet connection and no floppy drive. Therefore it 
is difficult to supply dmesg etc logs.

dmesg shows no errors whatsoever, neither the bootlog nor messages. The 
XF86config.log differs on the last line:
when trying to startx gnome-session and it crashes the last line of XF86Config 
is: (II)SIS(0):SISDisplayPowerManagementSet(0)
whereas when starting twm there is no such last line.

lsmod shows that the modules for usbhid, usbmouse and usbkb are all properly 
loaded and as I said kb and mouse work faultlessly with this USB adapter.

>
> Thanks & regards 
> Peter
>
> -



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
