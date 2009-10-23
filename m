From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: 32 bit processors / 64 bit processors
Date: Fri, 23 Oct 2009 10:35:18 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0D593D45@GDCMX01.igglobal.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com> <9b0a5b990910202239u7423e88du4786700f79a4bda9@mail.gmail.com> <49FAB6BD-25CD-484D-AC5D-4731D083E075@gmail.com> <e291fbf10910202352vaf000dh8d5acc4f03f9839f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <e291fbf10910202352vaf000dh8d5acc4f03f9839f@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: C <a.la.kaarta@gmail.com>, simonyanix@gmail.com
Cc: Siddu <siddu.sjce@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org


Hi,

> 1. The size of the processor's internal address bus (virtual address
> space) is what qualifies it as a 32-bit / 64-bit processor.

Well, in that sense, isn't Pentium a "36-bit" processor (since it gives
the option of PAE to use 64 GB of memory - it must be having atleast 36
address lines)? 

On this topic and in this thread, we have had following responses to the
question on what is called a 32-bit or 64-bit processor:

1) Addressable Physical memory (=sizeof(void*))
2) Register Size (=instruction size) 

Are the above two independent of each other? If yes, then how do we
deine a processor as 32-bit / 64-bit?

Thanks,

Rajat

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
