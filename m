From: lawson_whitney@juno.com
Subject: Re: problems with recsue disk (was: Re: [no subject])
Date: Sun, 11 Aug 2002 23:05:23 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020811.234050.134670320.1.lawson_whitney@juno.com>
References: <5.1.0.14.1.20020811165027.0214d250@celine>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; 
	BOUNDARY="-1463810562-1438732874-1029121523=:2531"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020811165027.0214d250@celine>
List-Id: <linux-newbie.vger.kernel.org>
To: ray@comarre.com
Cc: brownh@hartford-hwp.com, linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

---1463810562-1438732874-1029121523=:2531
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 11 Aug 2002, Ray Olszewski wrote:

> So, if this line does actually work the same way as LILO, that entry passes
> to the kernel the instruction to use /lsh as init. You need to supply a
> full path relative to root, and since you've told it to use /dev/fd0 as /,
> this is the full path.
>
> The complicating factor here is that you are doing a two-step boot using
> initrd. What I don't know is how append= arguments interact with the initrd
> boot procedure. Perhaps someone else will be able to address this.
>
> Sorry I can't tell you more.
>
> Oh well, just one more thing -- the "initrd=initrd.img" argument tells the
> kernel to look for a file called "initrd.img" on the boot device and use it
> as part of the boot/init process. I'm assuming that when you said you
> copied "initrd.msg" to the floppy, you meant to write "initrd.img". If I've
> assumed wrong, then try adding the file initrd.img to the floppy.
>
> PS -- I notice after sending this message that you'd misaddressed the Cc:.
> I'm resending it with the list correctly copied.
>
> At 04:08 PM 8/11/02 -0400, Haines Brown wrote:
> >Olszewski on Sun, 11 Aug 2002 07:34:51 -0700) Subject: Re: boot floppy
> >(mkbootdisk) BCC: brownh@hartford-hwp.com References:
> ><5.1.0.14.1.20020811072603.0208e950@celine>
> >--text follows this line--
> >Ray,
> >
> >Thanks, but no progress yet. I used dd to copy to an unmounted
> >ext2-formatted floppy the files created by mkbootdisk: boot.msg,
> >initrd.msg, ldlinux.sys, syslinux.cfg, and vmlinuz. I also copied lsh

You can't do this and expect it to work.  Well, you could, if you really
know what you are doing. If you want to make a rescue
floppy yourself, the easiest way is to make a filesystem on the floppy
and mount it.  mkinitrd mounts a file on a loop device, IIRC.  You could
do something similar if you must use dd on a raw floppy.  vmlinuz, being
the last  file copied to the floppy, overwrites the other files, unless
you used options to dd you didn't tell us about.

> >(Little Shell, which I can run and get a "C" type prompt). The
> >syslinux.cfg files was edited as follows:
> >
> >label linux
> >         kernel vmlinuz
> >         append initrd=initrd.img root=/dev/fd0 init=/lsh
> >
> >I stuck the diskette into a (SCSI) Windows machine, and after the
> >machine's SCCI BIOS loaded, the diskette is accessed and I get:
> >
> >Loading.......................................................
> >Unpacking. Loading kernel
> >
> >Hoever, instead of starting lsh, it simply resets the machine and I'm
> >in a boot loop.

The kernel starts with a floppy bootloader, but there is no command line
for it to read, so it attempts to mount the device that was on / when
the kernel was compiled (you can change it with rdev)

If you installed the kernel source, <linux>/Documentation/ has some good
doco in initrd.txt and ramdisk.txt.
> >
> >Since runing ./lsh does lead to a prompt, I assume that binary is
> >workable. Therefore, something may be wrong with the script
> >above. I don't understand init, but why the forward slash in
> >init=/lsh?

You need an absolute path for init.  The easiest way to make a rescue
disk is to use the -r option of lilo.  I guess maybe we can try if the
lilo micro-howto is any use.
> >
> >Haines Brown
>
> --
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> -------------------------------------------------------------------------------

Lawson
---oops---

---1463810562-1438732874-1029121523=:2531
Content-Type: TEXT/PLAIN; charset=US-ASCII; name=lilo
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.21.0208112305230.2531@giftie.alien.org>
Content-Description: 
Content-Disposition: attachment; filename=lilo

bGlsbyAgICBtaWNyby1ob3d0byB2ZXJzaW9uIDAuMC42IDxsYXdzb25fd2hp
dG5leUBqdW5vLmNvbT4NCjI5IEZlYnJ1YXJ5IDIwMDAgIAlVc2UsIGRpc3Ry
aWJ1dGUgb3IgY2hhbmdlIGF0IHlvdXIgb3duIHJpc2suDQoNClRoZSBkZWZp
bml0aXZlIGRvY28gZm9yIGxpbG8gaXMgdGhlIFJFQURNRSBmaWxlIHRoYXQg
Y29tZXMgd2l0aCB0aGUgbGlsbw0Kc291cmNlLiAgVXN1YWxseSB0aGVyZSBp
cyBhbHNvIGEgY29weSBpbiAvdXNyL2RvY1tzXS9saWxvKi9SRUFETUUuICBJ
dA0KaXMgbG9uZywgYm9yaW5nLCBhbmQgdmVyeSBjb21wbGV0ZSwgcmVhbGx5
IGFuIGV4Y2VsbGVudCBwaWVjZSBvZg0KdGVjaG5pY2FsIHdyaXRpbmcuICBJ
dCBhbmQgbWFuIGJhc2ggYXJlIGdvb2QgcmVhc29ucyB0byBiZSBncmF0ZWZ1
bCBsZXNzDQpoYXMgYSBzdHJpbmcgc2VhcmNoIGNhcGFiaWxpdHkuDQoNCklm
IHlvdSBkb24ndCBoYXZlIHRoZSBSRUFETUUsIEkgdXJnZSB5b3UgdG8gaW5z
dGFsbCB0aGUgbGlsbyBzb3VyY2UgdG8NCmdldCBpdC4gIEl0IHJlYWxseSBp
cyBmaW5lIGRvY28uICBJIGNhbid0IHRoaW5rIGhvdyB0byBzYXkgaXQgYW55
DQpiZXR0ZXIuDQoNClRvIGRvIGFueXRoaW5nIGF0IGFsbCBmYW5jeSB3aXRo
IGxpbG8sIHdoYXQgeW91IG11c3QNCnVuZGVyc3RhbmQgaXMgdGhhdCBsaWxv
LmNvbmYgbXVzdCBkZXNjcmliZSB0aGUgZmlsZXMgeW91IG5lZWQgdG8gYm9v
dA0KZWFjaCBpbWFnZSA9IGFuZC9vciBvdGhlciA9IGluIHRlcm1zIG9mIHRo
ZSBkZXZpY2VzIGFuZCBmaWxlc3lzdGVtKHMpIA0KX2FzIHRoZXkgYXJlIGF0
IHRoZSB0aW1lIHlvdSBydW4gdGhlIGxpbG8gaW5zdGFsbGVyIC9zYmluL2xp
bG8uXyAgVGhpcw0KaW5jbHVkZXMgdGhlIGZpbGVzIG5hbWVkIGluIGltYWdl
ID0sIG1hcCA9LCBpbml0cmQgPSwgYW5kIGluc3RhbGwgPSwNCih5b3Ugb25s
eSBuZWVkIGFuIGluaXRyZCBpZiB5b3UgaGF2ZSB0byBsb2FkIGEgZHJpdmVy
IG1vZHVsZSB0byBtb3VudA0KLywgc2F5IGlmIC8gaXMgb24gYSBTQ1NJIGRl
dmljZSBhbmQgeW91IHVzZSBhIG1vZHVsYXIga2VybmVsKQ0KYW5kIGFwcGxp
ZXMgdG8gbWFraW5nIGEgZ29vZCByZWxpYWJsZSBsaWxvIGJvb3QgZmxvcHB5
IGFzIHdlbGw6DQoNCnRvIG1ha2UgYSBsaWxvIGJvb3QgZmxvcHB5IHlvdSBt
dXN0IA0KDQpbbWFrZSBhIGZpbGVzeXRlbSBvbiB0aGUgZmxvcHB5XQ0KbW91
bnQgaXQsIGFuZCBjb3B5IHlvdXIgaW1hZ2UsIGluaXRyZCwgYW5kIC9ib290
L2Jvb3QuYiBmaWxlcw0KdG8gZmlsZXMgb24gdGhlIGZsb3BweSB0aGF0IHdp
bGwgYmUgbmFtZWQgaW4gaW1hZ2UgPSwgaW5pdHJkID0sDQphbmQgaW5zdGFs
bCA9IHBhcmFtZXRlcnMuICBZb3UgZG9uJ3QgY3JlYXRlIHRoZSBmaWxlIG5h
bWVkIGluDQptYXAgPSwgIHlvdSBqdXN0IG5hbWUgdGhlIHBsYWNlIHdoZXJl
IGxpbG8gd2lsbCBwdXQgaXRzIG1hcCBmaWxlLCBzbw0KaXQgY2FuIHN0b3Jl
IGEgcGh5c2ljYWwgcG9pbnRlciB0byBpdCBpbiBib290LmIsIGxpa2V3aXNl
IHRoZSBib290DQpzZWN0b3IgaXRzZWxmIG11c3Qga25vdyB3aGVyZSBib290
LmIgd2lsbCBiZS4NCg0KT2YgY291cnNlLCB5b3UgY2FuIG1ha2UgYSBsaWxv
IGJvb3QgZmxvcHB5IGJ5IGp1c3QgY29weWluZyBhIHByZW1hZGUNCmltYWdl
IHRvIGEgZmxvcHB5LCBidXQgc29tZW9uZSBoYXMgdG8gaGF2ZSBkb25lIHRo
ZSB3b3JrIG9mIGluc3RhbGxpbmcNCmxpbG8gdGhlIHJpZ2h0IHdheSwgb3Ig
aXQgd29uJ3Qgd29yay4NCg0KSWYgeW91IGNhbiB1bmRlcnN0YW5kIHRoYXQs
IHlvdSBjYW4gZG8gYW55dGhpbmcgeW91IGxpa2Ugd2l0aCBsaWxvLg0KDQpB
cyBhIHNpZGUgbm90ZSwgaWYgbGlsbyBpcyBpbnN0YWxsZWQgaW50byBhIHBh
cnRpdGlvbiBib290IHJlY29yZA0KKGJvb3QgPSA8cGFydGl0aW9uIGRldmlj
ZSBuYW1lPiksIGFub3RoZXIgbGlsbyBpbnN0YWxsZWQgaW4gYW5vdGhlcg0K
cGFydGl0aW9uIG9yIGluIHRoZSBNQlIgY2FuIGJvb3QgdGhhdCBsaW51eCBw
YXJ0aXRpb24gYXMgYW4gDQoNCm90aGVyID0gDQoNCk9TIGluc3RlYWQgb2Yg
YW4gaW1hZ2UuICBZb3UgbWlnaHQgZmluZCB0aGF0IGFuIGVhc2llciB3YXkg
dG8gbWFuYWdlDQptdWx0aXBsZSBsaW51eCBwYXJ0aXRpb25zLg0KDQpQQVkg
QVRURU5USU9OIHRvIHRoZSBtZXNzYWdlcyB3aGVuIHJ1bm5pbmcgbGlsby4g
IEFueSBtZXNzYWdlIG90aGVyDQp0aGFuDQoNCkFkZGVkIDxsYWJlbD4gWypd
DQoNCmlzIHByb2JhYmx5IGFuIGFib3J0IG1lc3NhZ2UsIGFuZCBwcm9iYWJs
eSBtZWFucyBsaWxvIGRpZCBub3QgZG8gYW55dGhpbmcuDQpMb29rIGl0IHVw
IGluIHRoZSBSRUFETUUuICBJZiBpdCBpcyBhIGZhdGFsIGVycm9yLCB5b3Ug
aGF2ZSB0byBmaXggaXQNCmFuZCByZXJ1biBsaWxvIGJlZm9yZSB5b3UgY2Fu
IGV4cGVjdCBhIHN1Y2Nlc3NmdWwgYm9vdC4NCg0KQ3JlZGl0IFJpY2hhcmQg
QWRhbXMgPHBhM2djdUB6ZWVsYW5kbmV0Lm5sPiBmb3IgcmVtaW5kaW5nIG1l
Og0KDQpJZiB5b3UgaGF2ZSBib3RoIElERSBhbmQgU0NTSSBkcml2ZXMgb24g
eW91ciBtYWNoaW5lLCBsaWxvIGhhcyBubyB3YXkNCnRvIHRlbGwgd2hpY2gg
dGhlIEJJT1MgdGhpbmtzIGlzIGZpcnN0LCBhbmQgd2lsbCBndWVzcyB0aGUg
SURFLiAgSWYgdGhlDQpCSU9TIGlzIHNldCBzbyB0aGUgU0NTSSBkcml2ZXMg
YXJlIGZpcnN0LCB5b3UgbXVzdCB0ZWxsIGxpbG86DQoNCmRpc2sgPSAvZGV2
L3NkYQ0KICBiaW9zID0gMHg4MA0KZGlzayA9IC9kZXYvaGRhDQogIGJpb3Mg
PSAweDgxDQoNClRoaXMgaXMgYW4gZXhhbXBsZSBvbmx5LiAgUGxlYXNlIHVz
ZSB5b3VyIG93biBnb29kIHNlbnNlLiAgUHJldHR5DQpwbGVhc2U/ICBQcmV0
dHkgcGxlYXNlIHdpdGggbWFwbGUgc3lydXA/DQoNCkkgaGF2ZSBoYWQgcmVw
b3J0cyB0aGF0IEJJT1MncyB0aGF0IGxldCB5b3UgYm9vdCBmcm9tIG90aGVy
IHRoYW4gdGhlDQpmaXJzdCBoZCBhY3QgYXMgaWYgd2hpY2hldmVyIGhkIHdh
cyBib290ZWQgaXMgdGhlIGZpcnN0IGhkLCBhbmQgaGFzIHRvDQpiZSBhZGRy
ZXNzZWQgYXMgMHg4MC4gIEluIHRoYXQgY2FzZSwgaWYgeW91IGJvb3QgRkkg
L2Rldi9oZGIgd2l0aCB0aGUNCkJJT1MgdG8gc3RhcnQgbGlsbywgeW91IHdp
bGwgaGF2ZSB0byB0ZWxsIGxpbG8NCg0KZGlzayA9IC9kZXYvaGRiDQogIGJp
b3MgPSAweDgwDQoNCkdlbmVyYWxseSwgSSB0aGluayB0aGlzIGlzIGEgYmFk
IGlkZWEsIGJ1dCB5b3UgbWF5IGhhdmUgc29tZSByZWFzb24gdG8NCmRvIGl0
LCBzbyB5b3UgbWF5IGFzIHdlbGwga25vdyBhYm91dCBpdC4NCg==
---1463810562-1438732874-1029121523=:2531--


________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
