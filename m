From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Gnumeric won't open
Date: Sat, 20 Mar 2004 10:00:49 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403201000.49897.pa3gcu@zeelandnet.nl>
References: <20040320081843.0BEE81D88A@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_BhAXAWB47hoJAZ7"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040320081843.0BEE81D88A@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org


--Boundary-00=_BhAXAWB47hoJAZ7
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Saturday 20 March 2004 09:18, Peter wrote:
> Now can anyone make sense out of the lines created with strace gnumeric to
> get that program back on stream?

Your strace output has a possable answer;

Line nr, 5
connect(17,{sa_family=AF_INET,sin_port=htons(631),
sin_addr=inet_addr("127.0.

line wraps and possably cut and paste may have corrupted your text, what we 
see is;
("127.0.
I presume the 0.0.1") got cut away.

6) send(17, "POST / HTTP/1.1\r\n", 17, 0)  = 17
7) send(17, "Content-Length: 137\r\n", 21, 0) = 21
8) send(17, "Content-Type: application/ipp\r\n", 31, 0) = -1 EPIPE (Broken 
pipe)
9) --- SIGPIPE (Broken pipe) @ 0 (0) ---
10) send(17, "Content-Type: application/ipp\r\n", 31, 0) = -1 EPIPE (Broken 
pipe)
11) --- SIGPIPE (Broken pipe) @ 0 (0) ---
12) close(17)

This looks like whats causing the problem, gnumeric is trying to find out what 
printer you have and howto use/communicate with it, or thats what it looks 
like to me. When i start gnumeric i see a totaly different story. I have 
attached a file (if the mailing list allows attachments).

Of course that may not be the problem because i cannot see the rest of your 
strace output, you can if you wish send it to me as an attachment privatly, 
if you do please do not edit the file created by strace simply attach it in a 
mail, some editors may well line wrap the file and thierfor make it hard to 
read.

If this mail fails because of the attachment i will send another to the list 
without the attachment.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


--Boundary-00=_BhAXAWB47hoJAZ7
Content-Type: text/plain;
  charset="iso-8859-1";
  name="me"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="me"

connect(17, {sa_family=AF_INET, sin_port=htons(631), sin_addr=inet_addr("127.0.0.1")}, 16) = 0
access("/usr/share/locale/C_/cups_C_", F_OK) = -1 ENOENT (No such file or directory)
access("/usr/share/locale/C/cups_C", F_OK) = 0
send(17, "POST / HTTP/1.1\r\n", 17, 0)  = 17
send(17, "Content-Length: 204\r\n", 21, 0) = 21
send(17, "Content-Type: application/ipp\r\n", 31, 0) = 31
send(17, "Host: localhost\r\n", 17, 0)  = 17
send(17, "\r\n", 2, 0)                  = 2
time(NULL)                              = 1079771612
send(17, "\1\1\0\v\0\0\0\1", 8, 0)      = 8
time(NULL)                              = 1079771612
send(17, "\1G\0\22attributes-charset\0\niso-8859"..., 34, 0) = 34
time(NULL)                              = 1079771612
send(17, "H\0\33attributes-natural-language\0\2"..., 34, 0) = 34
time(NULL)                              = 1079771612
send(17, "E\0\vprinter-uri\0 ipp://localhost/"..., 48, 0) = 48
time(NULL)                              = 1079771612
send(17, "B\0\24requested-attributes\0\25printer"..., 79, 0) = 79
time(NULL)                              = 1079771612
send(17, "\3", 1, 0)                    = 1
recv(17, "HTTP/1.1 200 OK\r\nDate: Sat, 20 M"..., 2048, 0) = 426
time(NULL)                              = 1079771612
getrlimit(RLIMIT_NOFILE, {rlim_cur=1024, rlim_max=1024}) = 0
select(18, [17], NULL, NULL, {1, 0})    = 1 (in [17], left {1, 0})
time(NULL)                              = 1079771612
recv(17, "!\0\22printer-state-time\0\4\0\0\0\0001\0\24pr"..., 2048, 0) = 2048
select(18, [17], NULL, NULL, {1, 0})    = 1 (in [17], left {1, 0})
time(NULL)                              = 1079771612

--Boundary-00=_BhAXAWB47hoJAZ7--


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
