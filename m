From: "Lee Chin" <leechin@mail.com>
Subject: sending data on a socket followed by a close
Date: Wed, 27 Aug 2003 19:35:52 -0500
Sender: linux-net-owner@vger.kernel.org
Message-ID: <20030828003552.78024.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

Hi,
I am trying to send 500K on a asynchronous socket and after I've written all my data, I want to close the socket.

So I send data in a loop, and between calls to "write" I select on the filedescriptor till it is writable again and send more data.

I continue this untill I have no more data to send.

At the end, after sending all my data, I "close" the socket.

However, the client sees a TCP RST packet and only receives partial data.

What am I doing wrong?  I though that the close would actually kill the socket after all the data has been sent

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

CareerBuilder.com has over 400,000 jobs. Be smarter about your job search
http://corp.mail.com/careers

