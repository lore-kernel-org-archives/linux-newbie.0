From: =?iso-8859-1?Q?rgomez=40bancomer=2Ecom?= <rgomez@bancomer.com>
Subject: =?iso-8859-1?Q?Printing=20on=20Windows=20Printer=20with=20CUPS?=
Date: Fri, 31 Oct 2003 13:51:22 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FA1E3F9000004D6@mail-bcm01.alestra.net.mx>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, I'm trying to print on a Windows Share printer using CUPS, my printer.conf
file looks like this:

<printer smb>
DeviceURI smb://user:password@150.100.56.16/V6E05IB1
State Idle
Accepting Yes
JobSheets none none
QuotaPeriod 0
PageLimit 0
KLimit 0
</Printer>

When I send a print job I got this message in cups's log file:

E [31/Oct/2003:13:32:07 -0600] cli_session_request() failed...
E [31/Oct/2003:13:32:07 -0600] Unable to connect to SAMBA host, will retry
in 60 seconds...: Success

the command that CUPS use is:

root      8851  8490  0 13:20 ?        00:00:00 smb://user:password@150.100.56.16/V6E05IB1
1 root testprint.ps 1 page-top=36 pag

I'm sure that the printer name and print server are correct because I can
send data to the printer using smbclient like this:

[pedsgrr2@edsgrr00 tmp]$ smbclient //150.100.56.16/V6E05IB1 -U user%password
-P
added interface ip=150.100.106.33 bcast=150.100.106.255 nmask=255.255.255.0
session request to 150.100.56.16 failed (Called name not present)
session request to 150 failed (Called name not present)
Domain=[CB] OS=[Windows 5.0] Server=[Windows 2000 LAN Manager]
smb: \> translate
CR/LF<->LF and print text translation now on
smb: \> put smbprint 
putting file smbprint as \smbprint (33.8 kb/s) (average 33.8 kb/s)
smb: \> 


I want to expand the use of linux in this place, but I can't do this if
I can't print...

Tks for your help and time...



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
