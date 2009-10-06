From: Rajat Jain <rajat.noida.india@gmail.com>
Subject: strange code in linux kernel
Date: Tue, 6 Oct 2009 09:04:00 +0530
Message-ID: <b115cb5f0910052034h5194a5t113a1bbcd9c878e3@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=uRppDY2ICq4OJnly9u/zDI9iSiEYltSducRNlc/ybd8=;
        b=j2wRIxRfJjB8wsokEDa2CbOqf78RYNV4maHAD3uwdPZYxx3FMQBrvM43rsBuukYXiv
         8YsRxMBg/xummUDhmSPPmQg16h33TaFglYy7hQ2cexY2NP+kVmcF0E3lZTGhsSQINnxN
         F5G9s0T1DXia7Tu+VBhQMer5+EJJolzSzhlEQ=
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
Content-Transfer-Encoding: 7bit
To: Linux Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi List,

I found that there are some weird looking instances in kernel where a
function has been DEFINED (as opposite to DECLARED) using and "extern"
keyword. For e.g., the following code in arch/alpha/include/asm/io.h:

extern inline void __iomem *generic_ioportmap(unsigned long a)
{
        return alpha_mv.mv_ioportmap(a);
}

Using a definition along with extern does not make any sense to me.
Can some one please enlighten what is its use / purpose?

Thanks,

Rajat Jain

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

