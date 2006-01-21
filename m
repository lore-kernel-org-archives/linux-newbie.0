From: "hackmiester (Hunter Fuller)" <hackmiester@hackmiester.com>
Subject: Re: Please help me solve the problem about dict and dictd.
Date: Sat, 21 Jan 2006 05:50:41 -0600
Message-ID: <43D22011.9090909@hackmiester.com>
References: <m3r7723vz5.fsf@163.com>
Reply-To: hackmiester@hackmiester.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3r7723vz5.fsf@163.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Qiang <linux.liuqiang@163.com>, linux-newbie@vger.kernel.org

Hm. Comment out the line 'server dict.org' in /etc/dict.conf and tell us 
the results of "dict zoo" now.
-- 
--hackmiester
Walk a mile in my shoes and you will be a mile away in a new pair of shoes.


Qiang wrote:
> Hello, guys!
> Those days, I installed dictd-1.9.15.tar.gz
> and some dictionary database at the same time.
> 
> Lastly, binary "dictd" and "dict" were installed in the directory
> "/usr/local/sbin" and "/usr/local/bin" respectively.
> 
> Below are my "/etc/dictd.conf" and
> "/etc/dict.conf"(dict.conf is as the same as ~/.dictrc):
> ****************************************
> $ cat /etc/dictd.conf
> access {
>         allow localhost
>         allow 127.0.0.1
> }
> database web1913   { data "/usr/lib/dict/web1913.dict.dz"
>                      index "/usr/lib/dict/web1913.index" }
> database wn        { data "/usr/lib/dict/wn.dict.dz"
>                      index "/usr/lib/dict/wn.index" }
> database gazetteer { data "/usr/lib/dict/gazetteer.dict.dz"
>                      index "/usr/lib/dict/gazetteer.index" }
> ****************************************
> $ cat /etc/dict.conf
> server localhost
> server dict.org
> 
> ****************************************
> ****************************************
> 
> 
> Next, I ran the command "/usr/local/sbin/dictd".
> But I did not find it in the procedure list.
> 
> I also ran the command "dict zoo -c ~/.dictrc -h localhost".
> But terminal told me:
> Cannot connect to any servers (use -v to see why)
> 
> If I ran the command "dict zoo",
> terminal gave me the explanation of "zoo".
> 
> I am confused.
> 
> Thanks.                                 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
