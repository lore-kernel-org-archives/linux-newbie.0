From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: request_mem_region() compulsory or advisory?
Date: Fri, 12 Jan 2007 17:09:39 +0530
Message-ID: <7783925d0701120339s74e3e0c7k5f3e113ec3fe347e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

I'm trying to write a simple driver using some registers of my hardware.

Is a call to request_mem_region() advisory ("recommended") or
compulsory before I ioremap the memory?

In other words, if I don't use request_mem_region() before I start
using the memory; is my driver BOUND to fail, or it MAY fail?

Thanks,

Rick

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

