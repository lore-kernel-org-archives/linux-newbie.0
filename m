From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: switching to debian (... and installing the NVIDIA  GeForce4)
Date: Thu, 25 Mar 2004 11:46:40 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403251127320.26064-200000@legolas.personal.engin.umich.edu>
References: <5.1.0.14.1.20040325082305.01f8d7d0@celine>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="-728923359-2046184394-1080232877=:26156"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040325082305.01f8d7d0@celine>
Content-ID: <Pine.LNX.4.44.0403251141320.26156@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

---728923359-2046184394-1080232877=:26156
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII
Content-ID: <Pine.LNX.4.44.0403251141321.26156@legolas.personal.engin.umich.edu>

I tried adding/removing spaces from the Makefile and I still cannot get
'sh NVIDIA-Linux-x86-1.0-5336-pkg1.run' to function alright. I did 
download NVIDIA-Linux-x86-1.0-5336-pkg1.run from nvidia's website and have 
not installed the Debian package nvidia-kernel-source. 

'uname -r' gives 2.4.18-k7. The Makefile in /usr/src/linux at its top 
reads: 

VERSION = 2
PATCHLEVEL = 4
SUBLEVEL = 18
EXTRAVERSION =-k7

I have attached the nvidia-installer.log as an attachment (as its about 
~2K). I could'nt spot anything significant in that log -- perhaps my eyes 
are unfamiliar wrt to what to seek... 

I did not follow Richards suggestion below since the untarring of the 
zipped source did create /usr/src/kernel-source-2.4.18/. 

-K

On Thu, 25 Mar 2004, at 8:28am, Ray Olszewski wrote:

> At 05:15 PM 3/25/2004 +0100, pa3gcu wrote:

> >
> >No No No, /usr/src/kernel-source-2.4.18/ is NOT what you want i can assure
> >you.
> >
> >When you untarred the source a directory called linux-2.4.18 should have been
> >created you then need to create a symlink to "linux" for my example
> >underneat, so lets start again.
> 
> Actually, Richard, this is just a Debian naming convention that you are 
> unfamiliar with. Here, for example, is a relevant portion of my /usr/src 
> directory:
> 
> autovcr@kuryakin:~$ ls -l /usr/src
> [...]
> drwxr-xr-x   15 root     root         4096 Mar  4 10:59 kernel-source-2.4.19
> -rw-r--r--    1 root     root     25652223 Dec  5 15:59 
> kernel-source-2.4.19.tar.bz2
> lrwxrwxrwx    1 root     src            20 Aug 19  2002 linux -> 
> kernel-source-2.4.19
> 
> In Debian when you un'tar (for example) kernel-source-2.4.19.tar.bz2 you 
> get a directory tree named kernel-source-2.4.19, NOT one named linux-2.4.19.
> 
> I'm so used to this convention that I'd quite forgotten that other distros 
> don't follow it.
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 





---728923359-2046184394-1080232877=:26156
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII; NAME="nvidia-installer.log"
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.44.0403251141170.26156@legolas.personal.engin.umich.edu>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME="nvidia-installer.log"

bnZpZGlhLWluc3RhbGxlciBsb2cgZmlsZSAnL3Zhci9sb2cvbnZpZGlhLWlu


c3RhbGxlci5sb2cnDQpjcmVhdGlvbiB0aW1lOiBUaHUgTWFyIDI1IDExOjUz


OjEyIDIwMDQNCg0Kb3B0aW9uIHN0YXR1czoNCiAgbGljZW5zZSBwcmUtYWNj


ZXB0ZWQgICAgOiBmYWxzZQ0KICB1cGRhdGUgICAgICAgICAgICAgICAgICA6


IGZhbHNlDQogIGZvcmNlIHVwZGF0ZSAgICAgICAgICAgIDogZmFsc2UNCiAg


ZXhwZXJ0ICAgICAgICAgICAgICAgICAgOiBmYWxzZQ0KICB1bmluc3RhbGwg


ICAgICAgICAgICAgICA6IGZhbHNlDQogIGRyaXZlciBpbmZvICAgICAgICAg


ICAgIDogZmFsc2UNCiAgbm8gcHJlY29tcGlsZWQgaW50ZXJmYWNlOiBmYWxz


ZQ0KICBubyBuY3Vyc2VzIGNvbG9yICAgICAgICA6IGZhbHNlDQogIHF1ZXJ5


IGxhdGVzdCBkcml2ZXIgdmVyIDogZmFsc2UNCiAgT3BlbkdMIGhlYWRlciBm


aWxlcyAgICAgOiBmYWxzZQ0KICBubyBxdWVzdGlvbnMgICAgICAgICAgICA6


IGZhbHNlDQogIHNpbGVudCAgICAgICAgICAgICAgICAgIDogZmFsc2UNCiAg


WEZyZWU4NiBpbnN0YWxsIHByZWZpeCAgOiAvdXNyL1gxMVI2DQogIE9wZW5H


TCBpbnN0YWxsIHByZWZpeCAgIDogL3Vzcg0KICBJbnN0YWxsZXIgaW5zdGFs


bCBwcmVmaXg6IC91c3INCiAga2VybmVsIHNvdXJjZSBwYXRoICAgICAgOiAo


bm90IHNwZWNpZmllZCkNCiAga2VybmVsIGluc3RhbGwgcGF0aCAgICAgOiAo


bm90IHNwZWNpZmllZCkNCiAgcHJvYyBtb3VudCBwb2ludCAgICAgICAgOiAv


cHJvYw0KICB1aSAgICAgICAgICAgICAgICAgICAgICA6IChub3Qgc3BlY2lm


aWVkKQ0KICB0bXBkaXIgICAgICAgICAgICAgICAgICA6IC90bXANCiAgZnRw


IHNpdGUgICAgICAgICAgICAgICAgOiBmdHA6Ly9kb3dubG9hZC5udmlkaWEu


Y29tDQoNClVzaW5nOiBudmlkaWEtaW5zdGFsbGVyIG5jdXJzZXMgdXNlciBp


bnRlcmZhY2UNCi0+IExpY2Vuc2UgYWNjZXB0ZWQuDQotPiBObyBwcmVjb21w


aWxlZCBrZXJuZWwgaW50ZXJmYWNlIHdhcyBmb3VuZCB0byBtYXRjaCB5b3Vy


IGtlcm5lbDsgd291bGQgeW91IGxpDQogICBrZSB0aGUgaW5zdGFsbGVyIHRv


IGF0dGVtcHQgdG8gZG93bmxvYWQgYSBrZXJuZWwgaW50ZXJmYWNlIGZvciB5


b3VyIGtlcm5lbCBmDQogICByb20gdGhlIE5WSURJQSBmdHAgc2l0ZSAoZnRw


Oi8vZG93bmxvYWQubnZpZGlhLmNvbSk/IChBbnN3ZXI6IFllcykNCi0+IE5v


IG1hdGNoaW5nIHByZWNvbXBpbGVkIGtlcm5lbCBpbnRlcmZhY2Ugd2FzIGZv


dW5kIG9uIHRoZSBOVklESUEgZnRwIHNpdGU7DQogICB0aGlzIG1lYW5zIHRo


YXQgdGhlIGluc3RhbGxlciB3aWxsIG5lZWQgdG8gY29tcGlsZSBhIGtlcm5l


bCBpbnRlcmZhY2UgZm9yDQogICB5b3VyIGtlcm5lbC4NCi0+IEtlcm5lbCBz


b3VyY2UgcGF0aDogJy91c3Ivc3JjL2xpbnV4Jw0KLT4gUGVyZm9ybWluZyBj


Y192ZXJzaW9uX2NoZWNrIHdpdGggQ0M9ImNjIi4NCkVSUk9SOiBVbmFibGUg


dG8gZGV0ZXJtaW5lIHRoZSBOVklESUEga2VybmVsIG1vZHVsZSBmaWxlbmFt


ZS4NCkVSUk9SOiBJbnN0YWxsYXRpb24gaGFzIGZhaWxlZC4gIFBsZWFzZSBz


ZWUgdGhlIGZpbGUNCiAgICAgICAnL3Zhci9sb2cvbnZpZGlhLWluc3RhbGxl


ci5sb2cnIGZvciBkZXRhaWxzLiAgWW91IG1heSBmaW5kIHN1Z2dlc3Rpb25z


DQogICAgICAgb24gZml4aW5nIGluc3RhbGxhdGlvbiBwcm9ibGVtcyBpbiB0


aGUgUkVBRE1FIGF2YWlsYWJsZSBvbiB0aGUgTGludXgNCiAgICAgICBkcml2


ZXIgZG93bmxvYWQgcGFnZSBhdCB3d3cubnZpZGlhLmNvbS4NCg==
---728923359-2046184394-1080232877=:26156--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
