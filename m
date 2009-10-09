From: Reza Salehi <rezsalehi@yahoo.com>
Subject: Question regarding :scheduling while atomic"
Date: Fri, 9 Oct 2009 16:27:05 -0700 (PDT)
Message-ID: <338444.48959.qm@web53203.mail.re2.yahoo.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="0-1905563049-1255130825=:48959"
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024; t=1255130825; bh=3ej7jyYoTx0Cs/HsA+tkaNJsgKCaD3hzIolQo+w6OKE=; h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:MIME-Version:Content-Type; b=2aX10RbT1AQ/HtH6bkNXpDaKQGct0w8WL1uETaMzzAzHD4kk6aSz0rv6yxvxBqJeLDVBdb7I27DaBSeWaG4RGOlhvZRmVAL9YBtXYEF+Pex3frsFhMF9ewfEFGO93RWY+GPW0M3qT/e5tPYwGQX+fdnm1XdgkhoS9nS9/sK0bDs=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

--0-1905563049-1255130825=:48959
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,=0A=0A=0AI am getting kernel oops "=A0 scheduling while atomic: watc=
hdog or swapper" it doesn't make kernel to crash but i am sure it is not a =
good sign..=0AI am not holding any spin lock at all.=0AI am wonder what wou=
ld be best approach to debug this issue? What tool is appropriate for debug=
ging? =0A=0AYou can see the kernel oops as attached files.=0A=0AThanks for =
your help in advance.=A0=0A=0ABest Regards,=0AReza=0A=0A=0A=0A      
--0-1905563049-1255130825=:48959
Content-Type: application/octet-stream; name=debug
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="debug"

cmEgICAgOiA4MDA2YzNhNCBjcHVfaWRsZSsweDJjLzB4NTQKU3RhdHVzOiAx
MDAwZDQwMyAgICBLRVJORUwgRVhMIElFCkNhdXNlIDogNDA4MDgwMDAKUHJJ
ZCAgOiAwMDAxOTM3NCAoTUlQUyAyNEtjKQpCVUc6IHNjaGVkdWxpbmcgd2hp
bGUgYXRvbWljOiBzd2FwcGVyLzAvMHgxMDAwMDEwMApNb2R1bGVzIGxpbmtl
ZCBpbjogZXZkZXYgdnJ3X3dzbXAoUCkgdnJ3X3dtZShQKSB2cndfZ3BsIHds
YW5fd2F2ZV91bWxtZShQKSBhdGhfcGNpIHdsYW5feGF1dGggd2xhbl93ZXAg
d2xhbl90a2lwIHdsYW5lQ3B1IDAKJCAwICAgOiAwMDAwMDAwMCA4MDMwMDAw
MCA4MDA2MGEwMCAwMGM3MmM4NgokIDQgICA6IDAwMDAwMDAwIDAwYzcyYzg2
IDgwMmM1YmE4IDgwOTUwYzVjCiQgOCAgIDogMDAwMDAwMDAgMTYzZDQ4Nzgg
NjYzZTk0ZDEgMDAwMDAwMDAKJDEyICAgOiAwMDAwMDAwMCAwMDAwMDAwMCA4
MDJiZmVkMCA4MWMxZGFhYwokMTYgICA6IDgwMzEwMDAwIDgwMmZlNmJlIDgw
MzAwMDAwIDgwMzAwMDAwCiQyMCAgIDogODA3ZjAwMDAgMmMwMDAwMDAgMDBl
NDJjMDAgMDAwMDAwMDAKJDI0ICAgOiAwMDAwMDAwMiA4MDA3MDkzOAokMjgg
ICA6IDgwMmJlMDAwIDgwMmJmZjgwIDAwMDAwMGU0IDgwMDZjM2E0CkhpICAg
IDogMDAyN2QxOTUKTG8gICAgOiA2NjNlOTRkMQplcGMgICA6IDgwMDYwYTIw
IHI0a193YWl0KzB4MjAvMHg0MAogICAgVGFpbnRlZDogUApyYSAgICA6IDgw
MDZjM2E0IGNwdV9pZGxlKzB4MmMvMHg1NApTdGF0dXM6IDEwMDBkNDAzICAg
IEtFUk5FTCBFWEwgSUUKQ2F1c2UgOiA0MDgwODAwMApQcklkICA6IDAwMDE5
Mzc0IChNSVBTIDI0S2MpCmVXQVZFJQoK

--0-1905563049-1255130825=:48959--
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
