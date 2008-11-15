From: "=?ISO-8859-1?Q?Ren=EA?=" <rene@grad.icmc.usp.br>
Subject: Re: question about sys_call_table size
Date: Fri, 14 Nov 2008 22:52:49 -0200
Message-ID: <5f9618380811141652s28623500kfd77b30be5bf8a87@mail.gmail.com>
References: <2e422b910811111749q33b7e98av8aebd622eb9b2f7b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: base64
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references
         :x-google-sender-auth;
        bh=Ltas4QI1wx2BvhJfWnbcXRF6LrtLYwoyZxt8Akr1UtY=;
        b=pVPjr2FCRxj+lmJx9WX51eQLWcoY3/6D0fSFiEBnL0ffmy++jLDZI4ngtFqchbwrGJ
         eIqQO3pQzw/ozNDK8Gra5R/KOF5jREPuWGPcjuN4QGjXWDIHywXL7y1R76SZaklmdTjp
         ZA97Ze3he20ft9Q++IDnDKQVTcvwd9Bb35Ovs=
In-Reply-To: <2e422b910811111749q33b7e98av8aebd622eb9b2f7b@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1254"
To: =?BIG5?B?s6+w6qao?= <gcchen.org@gmail.com>
Cc: linux-newbie@vger.kernel.org

SU1ITyBhZGQgbmV3IHN5c2NhbGxzIGl0J3Mgbm90IGEgZ29vZCBpZGVhLCBhbmQgdGhlIG1haW4g
cmVhc29uIGlzClBvcnRhYmlsaXR5LiBUaGUgUE9TSVggc3RhbmRhcmRzIGRlZmluZXMgYSBzZXQg
b2Ygc3lzY2FsbHMgdG8Kb3BlcmF0aW5nIHN5c3RlbXMgYW5kIGEgbG90IG9mIG90aGVyIHRoaW5n
cy4gUG9ydCBjb2RlIChsaWtlIGxpYmMpIHRvCmEgUE9TSVggc3lzdGVtIGlzIG11Y2ggbW9yZSBl
YXN5IHRoYW4gcG9ydCB0byBhIG5vbi1QT1NJWCwgYW5kIHRoaXMgaXMKd2h5IHdlIGhhdmUgc29m
dHdhcmVzIHJ1bm5pbmcgaW4gbWFueSBwbGF0Zm9ybXMgKHNwZWNpYWxseSBpbiBVbml4CnBsYXRm
b3JtcywgbGlrZSBMaW51eCwgU29sYXJpcywgQlNELi4uKS4gT3RoZXIgcG9pbnQgaXMgY29tcGF0
aWJpbGl0eSwKaWYgTGludXggS2VybmVsIDIuNi4yNyBhZGQgYSBuZXcgc3lzY2FsbCB0byB0aGUg
c3lzdGVtLCBzb2Z0d2FyZXMgdGhhdAp1c2UgdGhpcyBzeXNjYWxsIHdpbGwgbm90IHdvcmsgb24g
b2xkZXIgdmVyc2lvbnMsIGltYWdpbmUgbm93IG90aGVyCm5ldyBzeXNjYWxsIGluIDIuNi4yNy40
IHJlbGVhc2UsIHNhbWUgdGhpbmcuLi4gc29mdHdhcmVzIHdpbGwgYnJlYWsKYmV0d2VlbiB2ZXJz
aW9ucywgdGhhdCBpcyBiYWQuCgpDaGVlcnM7CgpSZW6ougoKCk9uIFR1ZSwgTm92IDExLCAyMDA4
IGF0IDExOjQ5IFBNLCDqkIf4s8kgPGdjY2hlbi5vcmdAZ21haWwuY29tPiB3cm90ZToKPiBIaS4u
Cj4gSSBoYXZlIHR3byBxdWVzdGlvbnM6Cj4KPiAxLiBEb2VzIGFueW9uZSBldmVyIGVuY291bnRl
ciBhIHByb2JsZW0gdGhhdCBtdXN0IGJlIHNvbHZlZCBieSBhZGRpbmcKPiBuZXcgc3lzdGVtIGNh
bGxzLiBJZiB5ZXMsIHBsZWFzZSBicmllZmx5IGRlc2NyaWJlIHlvdXIgcHJvYmxlbS4KPgo+IDIu
IElmIEkgYWRkIHRob3VzYW5kcyBvZiBuZXcgc3lzdGVtIGNhbGxzIChzYXkgMjAwMCkgaW4gbGlu
dXgga2VybmVsCj4gYW5kIGFkZCB0aGVzZSBuZXcgc3lzdGVtIGNhbGxzIGludG8gc3lzX2NhbGxf
dGFibGUsIHdpbGwgdGhlcmUgYmUgYW55Cj4gc3RhYmlsaXR5IG9yIHBlcmZvcm1hbmNlIGlzc3Vl
cyhvciBvdGhlciBjb25jZXJucykgb24gdGhpcyBuZXcga2VybmVsPwo+IFRoYW5rc35+fgo+Cj4g
Z2NjaGVuCj4gLS0KPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgbGlzdDogc2VuZCB0aGUgbGlu
ZSAidW5zdWJzY3JpYmUgbGludXgtbmV3YmllIiBpbgo+IHRoZSBib2R5IG9mIGEgbWVzc2FnZSB0
byBtYWpvcmRvbW9Admdlci5rZXJuZWwub3JnCj4gTW9yZSBtYWpvcmRvbW8gaW5mbyBhdCAgaHR0
cDovL3ZnZXIua2VybmVsLm9yZy9tYWpvcmRvbW8taW5mby5odG1sCj4gUGxlYXNlIHJlYWQgdGhl
IEZBUSBhdCBodHRwOi8vd3d3LmxpbnV4LWxlYXJuLm9yZy9mYXFzCj4K
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
