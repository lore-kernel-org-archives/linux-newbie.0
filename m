From: "rgomez@bancomer.com" <rgomez@bancomer.com>
Subject: Re: Squid only on eth1
Date: Tue, 27 Jan 2004 13:55:48 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4011C8740000129C@mail-bcm02.alestra.net.mx>
References: <010601c3e480$63c445e0$3401a8c0@iih.usyd.edu.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <010601c3e480$63c445e0$3401a8c0@iih.usyd.edu.au>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: james@lovedthanlost.net

It works, but one more, now it takes much time (close a minute) to get response
from proxy, here are all info I think you would need...

# nmap -sS XXX.XXX.XXX.XXX -p 8080 

Starting nmap V. 3.00 ( www.insecure.org/nmap/ )
The 1 scanned port on  (eth0) is: closed

Nmap run completed -- 1 IP address (1 host up) scanned in 21 seconds

# nmap -sS XXX.XXX.XXX.XXX -p 8080 

Starting nmap V. 3.00 ( www.insecure.org/nmap/ )
Interesting ports on  (eth1):
Port       State       Service
8080/tcp   open        http-proxy              

Nmap run completed -- 1 IP address (1 host up) scanned in 21 seconds

# echo $http_proxy
http://localhost:8080/

# wget www.tldp.com
--13:44:09--  http://www.tldp.com/
           => `index.html'
Resolving localhost... done.
Connecting to localhost[127.0.0.1]:8080... failed: Connection refused.

# echo $http_proxy
http://eth1:8080/

# wget www.ibm.com
--13:48:57--  http://www.ibm.com/
           => `index.html.4'
Connecting to eth1:8080... connected.
Proxy request sent, awaiting response... 302 Moved Temporarily
Location: http://www.ibm.com/us/ [following]
--13:49:44--  http://www.ibm.com/us/
           => `index.html.4'
Connecting to eth1:8080... connected.
Proxy request sent, awaiting response... 200 OK
Length: 27,087 [text/html]

100%[====================================>] 27,087         5.02K/s    ETA
00:00

13:49:51 (5.02 KB/s) - `index.html.4' saved [27087/27087]

$>-- Mensaje Original --
$>From:	"James Turnbull" <james@lovedthanlost.net>
$>To:	"linux-newbie" <linux-newbie@vger.kernel.org>
$>Subject: Re: Squid only on eth1
$>Date:	Tue, 27 Jan 2004 13:50:57 +1100
$>
$>
$>> Hi:
>
> I have 2 eth devices in my Linux box, I want that all squid traffic go
throw
> eth1 an not eth0, how do I configure it?
>

If they have seperate IP addresses you can force squid to use a specific
IP
address in the squid.conf file.  Lo
$>k at the http_port config option and
specify an IP, i.e. http_port 10.0.0.5:3128

Regards

James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in
the body of a message to majordomo@vger.kernel.org
More majordomo
$>info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
