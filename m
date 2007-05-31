From: "K.R. Foley" <kr@cybsft.com>
Subject: Re: Why is Linux not RTOS?
Date: Wed, 30 May 2007 20:16:22 -0500
Message-ID: <465E21E6.4050904@cybsft.com>
References: <7783925d0704040521q3755394uf774884b5298eec2@mail.gmail.com>	 <7783925d0704040605s4590d421y39ae5b13a020a8a@mail.gmail.com>	 <ev0fpc$bc5$1@sea.gmane.org> <200704051236.29847.Tzahi.ML2@gmail.com>	 <f68850780704050307o3639b8bbi993e6a7a11adbe72@mail.gmail.com> <1180486056.5473.28.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <1180486056.5473.28.camel@localhost.localdomain>
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
Content-Type: text/plain; charset="us-ascii"
To: rrbranco@br.ibm.com
Cc: Raseel Bhagat <raseelbhagat@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Rodrigo Rubira Branco wrote:
> Ok, let's clarify somethings ;)

Please don't top post.

> 
> 
> First of all I really recommend this links:
> http://www.linuxjournal.com/article/9361
> http://rt.wiki.kernel.org/
> 
> The real-time implementations previously commented in the list relies on
> "interrupt shielding" (forcing interrupts to run on a reserved CPU) and
> "CPU pinning" (forcing real-time tasks to only run on a CPU which
> doesn't run any other tasks), so we can't say it's a 'real' real-time ;)
> (it does not take the best advantage of multiple cpu's for example and
> needs more than just one in anyway).

The above description is inaccurate when talking about about Ingo
Molnar's PREEMPT_RT or Real-Time patch. The -rt patchset, as it is also
called, takes full advantage of SMP capabilities for both interrupts and
Real-Time tasks.

> 
> Legal notice: It's just my personal contribution.
> 
> 
> P.S.:  Sorry my delay to answer that ;)
> 
> 
> On Thu, 2007-04-05 at 15:37 +0530, Raseel Bhagat wrote:
>> Hi Tzahi,
>>
>> On 4/5/07, Tzahi Fadida <Tzahi.ML2@gmail.com> wrote:
>>> What is this i hear about PREEMT_RT from VirtualLogix:
>>> http://www.wirelessiq.com/content/newsfeed/9867.html
>> I think the author is trying to mention the different innovative
>> solutions to the latency issue in the GPOS Linux Kernel. PREEMPT_RT ,
>> IIRC  was a Real Time patch by Ingo Molar.
>> VirtualLogix's Virtual OS is another such solution, etc.
>>
>> Thanks,
>> Raseel
>> -
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs


-- 
	kr

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

