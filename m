From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: switching to debian (... and installing the NVIDIA   GeForce4)
Date: Fri, 26 Mar 2004 01:30:35 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403260110390.26709-300000@legolas.personal.engin.umich.edu>
References: <5.1.0.14.1.20040325092417.01f19cb8@celine>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="-728923359-2062197206-1080282354=:26754"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040325092417.01f19cb8@celine>
Content-ID: <Pine.LNX.4.44.0403260126400.26754@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

---728923359-2062197206-1080282354=:26754
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII
Content-ID: <Pine.LNX.4.44.0403260126401.26754@legolas.personal.engin.umich.edu>

make is (was) installed.

sh NVIDIA-Linux-x86-1.0-5336-pkg1.run --kernel-name=2.4.18-k7, did not 
work. 

So, I obtained  NVIDIA-Linux-x86-1.0-4363.run from nvidia.com, and ran as:
sh NVIDIA-Linux-x86-1.0-4363.run  --kernel-name=2.4.18-k7, and this worked 
(seemingly). 

I set my X driver to be nvidia (as indicated) but could not startx. 

I tried: # modprobe nvidia and came up with a list of "unresolved 
symbols". 

I taken the liberty of attaching both the nvidia-installer.log, as well as 
the output of modprobe nvidia to this message. 

Please tell me what to attempt next. 

Thanks,

-K

PS: Richard, I followed your instructions line for line: 

> cd /usr/src/linux
> make mrproper
> cp /boot/config-xx .config
> edit Makefile
> change line 4 from 
> EXTRAVERSION =
> To
> EXTRAVERSION = -k7
> save file;
> make oldconfig
> make dep

yet, # sh NVIDIA-Linux-x86-1.0-5336-pkg1.run would not work. 

On Thu, 25 Mar 2004, at 10:25am, Ray Olszewski wrote:

> 
>   Why this fails is not readily apparent. The first thing to check, I 
> suppose, is that you have "make" installed on your system. If not, install 
> it ("apt-get install make").
> 
> If that's not it, try pecifying the kernel name as a command-line option. 
> It's something like the following:
> 
>          sh NVIDIA-Linux-x86-1.0-5336-pkg1.run --kernel-name=[KERNELNAME]
> 
> replacing [KERNELNAME] with the actual name.
> 
> If neither of these tactica work, consider dropping back to an eariler 
> version of the NVIDIA package, one known to work with 2.4.x kernels (like 
> the 4363 I have working here with a bespoke 2.4.19 .
> 
k


---728923359-2062197206-1080282354=:26754
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII; NAME="modprobe.nvida.out"
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.44.0403260125540.26754@legolas.personal.engin.umich.edu>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME="modprobe.nvida.out"

L2xpYi9tb2R1bGVzLzIuNC4xOC1rNy9rZXJuZWwvZHJpdmVycy92aWRlby9u


dmlkaWEubzogdW5yZXNvbHZlZCBzeW1ib2wgZGV2ZnNfcmVnaXN0ZXJfY2hy


ZGV2X1IyMGExOGMxMQ0KL2xpYi9tb2R1bGVzLzIuNC4xOC1rNy9rZXJuZWwv


ZHJpdmVycy92aWRlby9udmlkaWEubzogdW5yZXNvbHZlZCBzeW1ib2wgbWVt


X21hcF9SMjJkOWE3MTMNCi9saWIvbW9kdWxlcy8yLjQuMTgtazcva2VybmVs


L2RyaXZlcnMvdmlkZW8vbnZpZGlhLm86IHVucmVzb2x2ZWQgc3ltYm9sIGRl


dmZzX3JlZ2lzdGVyX1I1MjMyMzVhZg0KL2xpYi9tb2R1bGVzLzIuNC4xOC1r


Ny9rZXJuZWwvZHJpdmVycy92aWRlby9udmlkaWEubzogdW5yZXNvbHZlZCBz


eW1ib2wgaXJxX3N0YXRfUjZjZGZjZjNlDQovbGliL21vZHVsZXMvMi40LjE4


LWs3L2tlcm5lbC9kcml2ZXJzL3ZpZGVvL252aWRpYS5vOiB1bnJlc29sdmVk


IHN5bWJvbCBpbml0X21tX1IzMzYwMTU2OA0KL2xpYi9tb2R1bGVzLzIuNC4x


OC1rNy9rZXJuZWwvZHJpdmVycy92aWRlby9udmlkaWEubzogdW5yZXNvbHZl


ZCBzeW1ib2wgZGV2ZnNfdW5yZWdpc3Rlcl9SOGUyNTVmYTQNCi9saWIvbW9k


dWxlcy8yLjQuMTgtazcva2VybmVsL2RyaXZlcnMvdmlkZW8vbnZpZGlhLm86


IHVucmVzb2x2ZWQgc3ltYm9sIHJlbW92ZV9wcm9jX2VudHJ5X1I1ZDM0NTcx


Yg0KL2xpYi9tb2R1bGVzLzIuNC4xOC1rNy9rZXJuZWwvZHJpdmVycy92aWRl


by9udmlkaWEubzogdW5yZXNvbHZlZCBzeW1ib2wgX19wb2xsd2FpdF9SZjBj


ZWQ0ZjANCi9saWIvbW9kdWxlcy8yLjQuMTgtazcva2VybmVsL2RyaXZlcnMv


dmlkZW8vbnZpZGlhLm86IHVucmVzb2x2ZWQgc3ltYm9sIGNyZWF0ZV9wcm9j


X2VudHJ5X1JlYTgwZGIxZQ0KL2xpYi9tb2R1bGVzLzIuNC4xOC1rNy9rZXJu


ZWwvZHJpdmVycy92aWRlby9udmlkaWEubzogdW5yZXNvbHZlZCBzeW1ib2wg


cHJvY19yb290X2RyaXZlcl9SNGUwNGQyOTANCi9saWIvbW9kdWxlcy8yLjQu


MTgtazcva2VybmVsL2RyaXZlcnMvdmlkZW8vbnZpZGlhLm86IA0KSGludDog


WW91IGFyZSB0cnlpbmcgdG8gbG9hZCBhIG1vZHVsZSB3aXRob3V0IGEgR1BM


IGNvbXBhdGlibGUgbGljZW5zZQ0KICAgICAgYW5kIGl0IGhhcyB1bnJlc29s


dmVkIHN5bWJvbHMuICBDb250YWN0IHRoZSBtb2R1bGUgc3VwcGxpZXIgZm9y


DQogICAgICBhc3Npc3RhbmNlLCBvbmx5IHRoZXkgY2FuIGhlbHAgeW91Lg0K


DQovbGliL21vZHVsZXMvMi40LjE4LWs3L2tlcm5lbC9kcml2ZXJzL3ZpZGVv


L252aWRpYS5vOiBpbnNtb2QgL2xpYi9tb2R1bGVzLzIuNC4xOC1rNy9rZXJu


ZWwvZHJpdmVycy92aWRlby9udmlkaWEubyBmYWlsZWQNCi9saWIvbW9kdWxl


cy8yLjQuMTgtazcva2VybmVsL2RyaXZlcnMvdmlkZW8vbnZpZGlhLm86IGlu


c21vZCBudmlkaWEgZmFpbGVkDQo=
---728923359-2062197206-1080282354=:26754
Content-Type: TEXT/PLAIN; CHARSET=US-ASCII; NAME="nvidia-installer.log"
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.44.0403260125541.26754@legolas.personal.engin.umich.edu>
Content-Description: 
Content-Disposition: ATTACHMENT; FILENAME="nvidia-installer.log"

bnZpZGlhLWluc3RhbGxlciBsb2cgZmlsZSAnL3Zhci9sb2cvbnZpZGlhLWlu


c3RhbGxlci5sb2cnDQpjcmVhdGlvbiB0aW1lOiBGcmkgTWFyIDI2IDAxOjEx


OjUxIDIwMDQNCg0Kb3B0aW9uIHN0YXR1czoNCiAgbGljZW5zZSBwcmUtYWNj


ZXB0ZWQgICAgOiBmYWxzZQ0KICB1cGRhdGUgICAgICAgICAgICAgICAgICA6


IGZhbHNlDQogIGZvcmNlIHVwZGF0ZSAgICAgICAgICAgIDogZmFsc2UNCiAg


ZXhwZXJ0ICAgICAgICAgICAgICAgICAgOiBmYWxzZQ0KICB1bmluc3RhbGwg


ICAgICAgICAgICAgICA6IGZhbHNlDQogIGRyaXZlciBpbmZvICAgICAgICAg


ICAgIDogZmFsc2UNCiAgbm8gcHJlY29tcGlsZWQgaW50ZXJmYWNlOiB0cnVl


DQogIG5vIG5jdXJzZXMgY29sb3IgICAgICAgIDogZmFsc2UNCiAgcXVlcnkg


bGF0ZXN0IGRyaXZlciB2ZXIgOiBmYWxzZQ0KICBPcGVuR0wgaGVhZGVyIGZp


bGVzICAgICA6IGZhbHNlDQogIG5vIHF1ZXN0aW9ucyAgICAgICAgICAgIDog


ZmFsc2UNCiAgc2lsZW50ICAgICAgICAgICAgICAgICAgOiBmYWxzZQ0KICBY


RnJlZTg2IGluc3RhbGwgcHJlZml4ICA6IC91c3IvWDExUjYNCiAgT3BlbkdM


IGluc3RhbGwgcHJlZml4ICAgOiAvdXNyDQogIEluc3RhbGxlciBpbnN0YWxs


IHByZWZpeDogL3Vzcg0KICBrZXJuZWwgaW5jbHVkZSBwYXRoICAgICA6IChu


b3Qgc3BlY2lmaWVkKQ0KICBrZXJuZWwgaW5zdGFsbCBwYXRoICAgICA6IChu


b3Qgc3BlY2lmaWVkKQ0KICBwcm9jIG1vdW50IHBvaW50ICAgICAgICA6IC9w


cm9jDQogIHVpICAgICAgICAgICAgICAgICAgICAgIDogKG5vdCBzcGVjaWZp


ZWQpDQogIHRtcGRpciAgICAgICAgICAgICAgICAgIDogL3RtcA0KICBmdHAg


c2l0ZSAgICAgICAgICAgICAgICA6IGZ0cDovL2Rvd25sb2FkLm52aWRpYS5j


b20NCg0KVXNpbmc6IG52aWRpYS1pbnN0YWxsZXIgbmN1cnNlcyB1c2VyIGlu


dGVyZmFjZQ0KLT4gTGljZW5zZSBhY2NlcHRlZC4NCi0+IE5vdCBwcm9iaW5n


IGZvciBwcmVjb21waWxlZCBrZXJuZWwgaW50ZXJmYWNlcy4NCi0+IEtlcm5l


bCBpbmNsdWRlIHBhdGg6ICcvdXNyL3NyYy9saW51eC9pbmNsdWRlJw0KLT4g


Q2xlYW5pbmcga2VybmVsIG1vZHVsZSBidWlsZCBkaXJlY3RvcnkuDQogICBl


eGVjdXRpbmc6ICdjZCAuL3Vzci9zcmMvbnY7IG1ha2UgY2xlYW4nLi4uDQog


ICBybSAtZiBudi5vIG9zLWFncC5vIG9zLWludGVyZmFjZS5vIG9zLXJlZ2lz


dHJ5Lm8gIG52LWxpbnV4Lm8gbnZfY29tcGlsZXIuaCAqDQogICAuZCBOVmRy


aXZlciBudmlkaWEubw0KLT4gQnVpbGRpbmcga2VybmVsIG1vZHVsZToNCiAg


IGV4ZWN1dGluZzogJ2NkIC4vdXNyL3NyYy9udjsgbWFrZSBudmlkaWEubyBT


WVNJTkNMVURFPS91c3Ivc3JjL2xpbnV4L2luY2x1ZGUNCiAgICcuLi4NCiAg


IGVjaG8gXCNkZWZpbmUgTlZfQ09NUElMRVIgXCJgY2MgLXYgMj4mMSB8IHRh


aWwgLTFgXCIgPiBudl9jb21waWxlci5oDQogICBjYyAtYyAtV2FsbCAtV2lt


cGxpY2l0IC1XcmV0dXJuLXR5cGUgLVdzd2l0Y2ggLVdmb3JtYXQgLVdjaGFy


LXN1YnNjcmlwdHMgLVdwDQogICBhcmVudGhlc2VzIC1XcG9pbnRlci1hcml0


aCAtV2Nhc3QtcXVhbCAtV25vLW11bHRpY2hhciAgLU8gLU1EIC1EX19LRVJO


RUxfXyAtDQogICBETU9EVUxFIC1EX0xPT1NFX0tFUk5FTF9OQU1FUyAtRE5U


Uk0gLURfR05VX1NPVVJDRSAtRF9MT09TRV9LRVJORUxfTkFNRVMgLURfDQog


ICBfS0VSTkVMX18gLURNT0RVTEUgIC1ETlZfTUFKT1JfVkVSU0lPTj0xIC1E


TlZfTUlOT1JfVkVSU0lPTj0wIC1ETlZfUEFUQ0hMRVZFDQogICBMPTQzNjMg


IC1ETlZfVU5JWCAgIC1ETlZfTElOVVggICAtRE5WX0lOVDY0X09LICAgLURO


VkNQVV9YODYgICAgICAtRFJFTUFQX1BBDQogICBHRV9SQU5HRV80ICAtSS4g


LUkvdXNyL3NyYy9saW51eC9pbmNsdWRlIC1Xbm8tY2FzdC1xdWFsIG52LmMN


CiAgIGNjIC1jIC1XYWxsIC1XaW1wbGljaXQgLVdyZXR1cm4tdHlwZSAtV3N3


aXRjaCAtV2Zvcm1hdCAtV2NoYXItc3Vic2NyaXB0cyAtV3ANCiAgIGFyZW50


aGVzZXMgLVdwb2ludGVyLWFyaXRoIC1XY2FzdC1xdWFsIC1Xbm8tbXVsdGlj


aGFyICAtTyAtTUQgLURfX0tFUk5FTF9fIC0NCiAgIERNT0RVTEUgLURfTE9P


U0VfS0VSTkVMX05BTUVTIC1ETlRSTSAtRF9HTlVfU09VUkNFIC1EX0xPT1NF


X0tFUk5FTF9OQU1FUyAtRF8NCiAgIF9LRVJORUxfXyAtRE1PRFVMRSAgLURO


Vl9NQUpPUl9WRVJTSU9OPTEgLUROVl9NSU5PUl9WRVJTSU9OPTAgLUROVl9Q


QVRDSExFVkUNCiAgIEw9NDM2MyAgLUROVl9VTklYICAgLUROVl9MSU5VWCAg


IC1ETlZfSU5UNjRfT0sgICAtRE5WQ1BVX1g4NiAgICAgIC1EUkVNQVBfUEEN


CiAgIEdFX1JBTkdFXzQgIC1JLiAtSS91c3Ivc3JjL2xpbnV4L2luY2x1ZGUg


LVduby1jYXN0LXF1YWwgb3MtYWdwLmMNCiAgIGNjIC1jIC1XYWxsIC1XaW1w


bGljaXQgLVdyZXR1cm4tdHlwZSAtV3N3aXRjaCAtV2Zvcm1hdCAtV2NoYXIt


c3Vic2NyaXB0cyAtV3ANCiAgIGFyZW50aGVzZXMgLVdwb2ludGVyLWFyaXRo


IC1XY2FzdC1xdWFsIC1Xbm8tbXVsdGljaGFyICAtTyAtTUQgLURfX0tFUk5F


TF9fIC0NCiAgIERNT0RVTEUgLURfTE9PU0VfS0VSTkVMX05BTUVTIC1ETlRS


TSAtRF9HTlVfU09VUkNFIC1EX0xPT1NFX0tFUk5FTF9OQU1FUyAtRF8NCiAg


IF9LRVJORUxfXyAtRE1PRFVMRSAgLUROVl9NQUpPUl9WRVJTSU9OPTEgLURO


Vl9NSU5PUl9WRVJTSU9OPTAgLUROVl9QQVRDSExFVkUNCiAgIEw9NDM2MyAg


LUROVl9VTklYICAgLUROVl9MSU5VWCAgIC1ETlZfSU5UNjRfT0sgICAtRE5W


Q1BVX1g4NiAgICAgIC1EUkVNQVBfUEENCiAgIEdFX1JBTkdFXzQgIC1JLiAt


SS91c3Ivc3JjL2xpbnV4L2luY2x1ZGUgLVduby1jYXN0LXF1YWwgb3MtaW50


ZXJmYWNlLmMNCiAgIGNjIC1jIC1XYWxsIC1XaW1wbGljaXQgLVdyZXR1cm4t


dHlwZSAtV3N3aXRjaCAtV2Zvcm1hdCAtV2NoYXItc3Vic2NyaXB0cyAtV3AN


CiAgIGFyZW50aGVzZXMgLVdwb2ludGVyLWFyaXRoIC1XY2FzdC1xdWFsIC1X


bm8tbXVsdGljaGFyICAtTyAtTUQgLURfX0tFUk5FTF9fIC0NCiAgIERNT0RV


TEUgLURfTE9PU0VfS0VSTkVMX05BTUVTIC1ETlRSTSAtRF9HTlVfU09VUkNF


IC1EX0xPT1NFX0tFUk5FTF9OQU1FUyAtRF8NCiAgIF9LRVJORUxfXyAtRE1P


RFVMRSAgLUROVl9NQUpPUl9WRVJTSU9OPTEgLUROVl9NSU5PUl9WRVJTSU9O


PTAgLUROVl9QQVRDSExFVkUNCiAgIEw9NDM2MyAgLUROVl9VTklYICAgLURO


Vl9MSU5VWCAgIC1ETlZfSU5UNjRfT0sgICAtRE5WQ1BVX1g4NiAgICAgIC1E


UkVNQVBfUEENCiAgIEdFX1JBTkdFXzQgIC1JLiAtSS91c3Ivc3JjL2xpbnV4


L2luY2x1ZGUgLVduby1jYXN0LXF1YWwgb3MtcmVnaXN0cnkuYw0KICAgbGQg


LXIgLW8gbnYtbGludXgubyBudi5vIG9zLWFncC5vIG9zLWludGVyZmFjZS5v


IG9zLXJlZ2lzdHJ5Lm8gDQogICBsZCAtciAtbyBudmlkaWEubyBudi1saW51


eC5vIG52LWtlcm5lbC5vDQotPiBkb25lLg0KLT4gS2VybmVsIG1vZHVsZSBj


b21waWxhdGlvbiBjb21wbGV0ZS4NCi0+IEluc3RhbGxpbmcgY2xhc3NpYyBU


TFMgT3BlbkdMIGxpYnJhcmllcy4NCi0+IEluc3RhbGxpbmcgJ05WSURJQSBB


Y2NlbGVyYXRlZCBHcmFwaGljcyBEcml2ZXIgZm9yIExpbnV4LXg4NicgKDEu


MC00MzYzKToNCiAgIGV4ZWN1dGluZzogJy4vdXNyL3NyYy9udi9tYWtlZGV2


aWNlcy5zaCcuLi4NCiAgIGRlcG1vZDogKioqIFVucmVzb2x2ZWQgc3ltYm9s


cyBpbiAvbGliL21vZHVsZXMvMi40LjE4LWs3L2tlcm5lbC9kcml2ZXJzL3Zp


ZGUNCiAgIG8vbnZpZGlhLm8NCiAgIGV4ZWN1dGluZzogJy9zYmluL2xkY29u


ZmlnJy4uLg0KICAgZXhlY3V0aW5nOiAnL3NiaW4vZGVwbW9kIC1hcScuLi4N


Ci0+IGRvbmUuDQotPiBEcml2ZXIgZmlsZSBpbnN0YWxsYXRpb24gaXMgY29t


cGxldGUuDQotPiBSdW5uaW5nIHBvc3QtaW5zdGFsbCBzYW5pdHkgY2hlY2s6


DQotPiBkb25lLg0KLT4gU2FuaXR5IGNoZWNrIHBhc3NlZC4NCi0+IEluc3Rh


bGxhdGlvbiBvZiB0aGUgTlZJRElBIEFjY2VsZXJhdGVkIEdyYXBoaWNzIERy


aXZlciBmb3IgTGludXgteDg2DQogICAodmVyc2lvbjogMS4wLTQzNjMpIGlz


IG5vdyBjb21wbGV0ZS4gIFBsZWFzZSB1cGRhdGUgeW91ciBYRjg2Q29uZmln


IGZpbGUgYXMNCiAgIGFwcHJvcHJpYXRlOyBzZWUgdGhlIGZpbGUgL3Vzci9z


aGFyZS9kb2MvTlZJRElBX0dMWC0xLjAvUkVBRE1FIGZvciBkZXRhaWxzLg0K



---728923359-2062197206-1080282354=:26754--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
