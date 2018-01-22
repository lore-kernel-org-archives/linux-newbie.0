From: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: Re: What is the meaning of [PATCH v3 0/3] things in mail subject
Date: Mon, 22 Jan 2018 16:01:19 +0100
Message-ID: <0f00270fd71aede53ebf47deabff02ea@kolabnow.com>
References: <20180122143607.GA33742@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
        message-id:references:in-reply-to:subject:subject:from:from:date
        :date:content-transfer-encoding:content-type:content-type
        :mime-version:received:received:received; s=dkim20160331; t=
        1516633281; x=1516633303; bh=Xi4NfY3IBXlL2mkguRaH7mLI0RAGdxqNITe
        AYy/tJSo=; b=YgI4DuxFEsiEMyMwkG8dsfVxI+0l/xc+ErD+HsMRwHeBWVc5otO
        FczCWei0GJQ3GeVyfIPPrzxi1pTuWfIxnpNquX7whcS+G+qtg16ACaQZq1JvDgH6
        EYLaUKw5XO4gq3tfQYiV/cTDSK9E1pp8K0Ue2vCueFU4zQF92YqQ6DFS66LI8Y0W
        vgueMTjCX9y9kUmp5/tcOuEFXBUd4oDlSmp8aw+ROGmIjzozx3Wfcv84y0w6NzGb
        ujVUpxweza/2jkLkCeu+APt7zQou6rEp3c7Rvh3MdQrzIWJxiwWKWHK4oFLYBEbh
        YUboCAEX4fEko0wLkp65Mgnc+3bmAlVVHeSoMXdsbGXeGc0ejt/Tg1/HlyyMz3lX
        CVYjbgld4geBvVjmofLXR1lXFse2b1wbDtAqxiLFjCikHTLgTDuY5eXz9MNjhWuR
        BdxixFPBsfLU4RHTR5Uf2T6uap8 
In-Reply-To: <20180122143607.GA33742@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: wuzhouhui <wuzhouhui14@mails.ucas.ac.cn>
Cc: linux-newbie@vger.kernel.org, linux-newbie-owner@vger.kernel.org

Le 22/01/2018 15:36, wuzhouhui a écrit :
> In linux kernel mail list, I often see such string in mail subject:
>     [PATCH V3 3/3]
> or
>     [PATCH 0/8]
> 
> What's meaning of "V3", "3/3" and "0/8"?

Hi Wuzhouhui,

The 0/8 is the number of the patch in a series (0 for the patch that 
explains the whole series, in a series of 8 patches).
V3 is the version of the series, when it is not accepted as-is and needs 
rework according to the feedback gathered.
Regards,

Hubert Chaumette
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
