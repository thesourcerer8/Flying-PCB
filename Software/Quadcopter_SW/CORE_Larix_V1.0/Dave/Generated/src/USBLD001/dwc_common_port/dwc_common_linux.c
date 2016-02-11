/*******************************************************************************
 Copyright (c) 2013, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without**
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Jan 11, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** CM          App Developer                                                  **
*******************************************************************************/


#ifdef DWC_CCLIB
# include "dwc_cc.h"
#endif

#ifdef DWC_NOTIFYLIB
# include "dwc_notifier.h"
#endif

#include <stdlib.h>
#include <string.h>

#include "../../../inc/USBLD001/USBLD001_HW_Private.h"

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#else
#include <XMC4200.h>
#endif

#include "../type_CM.h"
#include "dwc_os.h"
#include "dwc_list.h"
#include "../USBLD001/usbld001_delay.h"


/* MISC */

void *DWC_MEMSET(void *dest, uint8_t byte, uint32_t size)
{
	return memset(dest, byte, size);
}

void *DWC_MEMCPY(void *dest, void const *src, uint32_t size)
{
	return memcpy(dest, src, size);
}

void *DWC_MEMMOVE(void *dest, void *src, uint32_t size)
{
	return memmove(dest, src, size);
}

int DWC_MEMCMP(void *m1, void *m2, uint32_t size)
{
	return memcmp(m1, m2, size);
}

int DWC_STRNCMP(void *s1, void *s2, uint32_t size)
{
	return strncmp(s1, s2, size);
}

int DWC_STRCMP(void *s1, void *s2)
{
	return strcmp(s1, s2);
}

int DWC_STRLEN(char const *str)
{
	return strlen(str);
}

char *DWC_STRCPY(char *to, char const *from)
{
	return strcpy(to, from);
}

char *DWC_STRDUP(char const *str)
{
	int len = DWC_STRLEN(str) + 1;
	char *new = DWC_ALLOC_ATOMIC(len);

	if (!new) {
		return NULL;
	}

	DWC_MEMCPY(new, str, len);
	return new;
}


#ifndef USE_IFX_DEV 
int DWC_ATOI(const char *str, int32_t *value)
{
	char *end = NULL;

	*value = simple_strtol(str, &end, 0);
	if (*end == '\0') {
		return 0;
	}

	return -1;
}


int DWC_ATOUI(const char *str, uint32_t *value)
{
	char *end = NULL;

	*value = simple_strtoul(str, &end, 0);
	if (*end == '\0') {
		return 0;
	}

	return -1;
}
#endif

#ifdef DWC_UTFLIB
/* From usbstring.c */

int DWC_UTF8_TO_UTF16LE(uint8_t const *s, uint16_t *cp, unsigned len)
{
	int	count = 0;
	u8	c;
	u16	uchar;

	/* this insists on correct encodings, though not minimal ones.
	 * BUT it currently rejects legit 4-byte UTF-8 code points,
	 * which need surrogate pairs.  (Unicode 3.1 can use them.)
	 */
	while (len != 0 && (c = (u8) *s++) != 0) {
		if (unlikely(c & 0x80)) {
			if ((c & 0xe0) == 0xc0) {
				uchar = (c & 0x1f) << 6;

				c = (u8) *s++;
				if ((c & 0xc0) != 0xc0)
					goto fail;
				c &= 0x3f;
				uchar |= c;
			} else if ((c & 0xf0) == 0xe0) {
				uchar = (c & 0x0f) << 12;

				c = (u8) *s++;
				if ((c & 0xc0) != 0xc0)
					goto fail;
				c &= 0x3f;
				uchar |= c << 6;

				c = (u8) *s++;
				if ((c & 0xc0) != 0xc0)
					goto fail;
				c &= 0x3f;
				uchar |= c;

				/* no bogus surrogates */
				if (0xd800 <= uchar && uchar <= 0xdfff)
					goto fail;

			} else
				goto fail;
		} else
			uchar = c;
		put_unaligned (cpu_to_le16 (uchar), cp++);
		count++;
		len--;
	}
	return count;
fail:
	return -1;
}
#endif	/* DWC_UTFLIB */


/* dwc_debug.h */
#ifndef USE_IFX_DEV 
dwc_bool_t DWC_IN_IRQ(void)
{
	return in_irq();
}

dwc_bool_t DWC_IN_BH(void)
{
	return in_softirq();
}


void DWC_VPRINTF(char *format, va_list args)
{
#ifndef USE_IFX_DEV 
	vprintk(format, args);
#endif
}

int DWC_VSNPRINTF(char *str, int size, char *format, va_list args)
{
#ifndef USE_IFX_DEV 
	return vsnprintf(str, size, format, args);
#endif
#ifdef USE_IFX_DEV 
	/* To remove compile time warning */
	return 0;
#endif
}

void DWC_PRINTF(char *format, ...)
{
	va_list args;

	va_start(args, format);
	DWC_VPRINTF(format, args);
	va_end(args);
}

int DWC_SPRINTF(char *buffer, char *format, ...)
{
	int retval;
	va_list args;

	va_start(args, format);
	retval = vsprintf(buffer, format, args);
	va_end(args);
	return retval;
}

int DWC_SNPRINTF(char *buffer, int size, char *format, ...)
{
	int retval;
	va_list args;

	va_start(args, format);
	retval = vsnprintf(buffer, size, format, args);
	va_end(args);
	return retval;
}

void __DWC_WARN(char *format, ...)
{
	va_list args;
	va_start(args, format);
	va_end(args);
}

void __DWC_ERROR(char *format, ...)
{
	va_list args;

	va_start(args, format);
	va_end(args);
}

void DWC_EXCEPTION(char *format, ...)
{
#ifndef USE_IFX_DEV 
	va_list args;

	va_start(args, format);
	DWC_PRINTF(KERN_ERR);
	DWC_VPRINTF(format, args);
	va_end(args);

	BUG_ON(1);
#endif
}
#endif
#ifdef DEBUG
void __DWC_DEBUG(char *format, ...)
{
	va_list args;

	va_start(args, format);
	DWC_PRINTF(KERN_DEBUG);
	DWC_VPRINTF(format, args);
	va_end(args);
}
#endif


/* dwc_mem.h */

void *__DWC_DMA_ALLOC(void *dma_ctx, uint32_t size, dwc_dma_t *dma_addr)
{
#ifndef USE_IFX_DEV 
#ifdef xxCOSIM /* Only works for 32-bit cosim */
	void *buf = dma_alloc_coherent(dma_ctx, (size_t)size, dma_addr, GFP_KERNEL);
#else
	void *buf = dma_alloc_coherent(dma_ctx, (size_t)size, dma_addr, GFP_KERNEL | GFP_DMA32);
#endif
	if (!buf) {
		return NULL;
	}

	memset(buf, 0, (size_t)size);
	return buf;
#endif
#ifdef USE_IFX_DEV 
	void *buf;
	buf = __DWC_ALLOC(NULL,size);
	if(NULL != dma_addr)
	{
		*dma_addr = (uint32_t)buf;
	}
	return buf;
#endif
}

void *__DWC_DMA_ALLOC_ATOMIC(void *dma_ctx, uint32_t size, dwc_dma_t *dma_addr)
{
#ifndef USE_IFX_DEV 
	void *buf = dma_alloc_coherent(NULL, (size_t)size, dma_addr, GFP_ATOMIC);
	if (!buf) {
		return NULL;
	}
	memset(buf, 0, (size_t)size);
	return buf;
#endif

#ifdef USE_IFX_DEV 
	/* To remove compile time warning */
	return NULL;
#endif
}

void __DWC_DMA_FREE(void *dma_ctx, uint32_t size, void *virt_addr, dwc_dma_t dma_addr)
{
#ifndef USE_IFX_DEV 
	dma_free_coherent(dma_ctx, size, virt_addr, dma_addr);
#endif
}

void *__DWC_ALLOC(void *mem_ctx, uint32_t size)
{
#ifdef USE_IFX_DEV 
	void * buf = malloc(size);
  if(buf != NULL)
  {
    memset(buf, 0, size);
    return buf;
  }
  else
  {
    return NULL;
  }
#else
	return kzalloc(size, GFP_KERNEL);
#endif
}

void *__DWC_ALLOC_ATOMIC(void *mem_ctx, uint32_t size)
{
#ifdef USE_IFX_DEV 
	return malloc(size);
#else
	return kzalloc(size, GFP_ATOMIC);
#endif
	
}

void __DWC_FREE(void *mem_ctx, void *addr)
{
#ifdef USE_IFX_DEV 
	free(addr);
#else
	kfree(addr);
#endif
}


#ifdef DWC_CRYPTOLIB
/* dwc_crypto.h */

void DWC_RANDOM_BYTES(uint8_t *buffer, uint32_t length)
{
	get_random_bytes(buffer, length);
}

int DWC_AES_CBC(uint8_t *message, uint32_t messagelen, uint8_t *key, uint32_t keylen, uint8_t iv[16], uint8_t *out)
{
	struct crypto_blkcipher *tfm;
	struct blkcipher_desc desc;
	struct scatterlist sgd;
	struct scatterlist sgs;

	tfm = crypto_alloc_blkcipher("cbc(aes)", 0, CRYPTO_ALG_ASYNC);
	if (tfm == NULL) {
		printk("failed to load transform for aes CBC\n");
		return -1;
	}

	crypto_blkcipher_setkey(tfm, key, keylen);
	crypto_blkcipher_set_iv(tfm, iv, 16);

	sg_init_one(&sgd, out, messagelen);
	sg_init_one(&sgs, message, messagelen);

	desc.tfm = tfm;
	desc.flags = 0;

	if (crypto_blkcipher_encrypt(&desc, &sgd, &sgs, messagelen)) {
		crypto_free_blkcipher(tfm);
		DWC_ERROR("AES CBC encryption failed");
		return -1;
	}

	crypto_free_blkcipher(tfm);
	return 0;
}

int DWC_SHA256(uint8_t *message, uint32_t len, uint8_t *out)
{
	struct crypto_hash *tfm;
	struct hash_desc desc;
	struct scatterlist sg;

	tfm = crypto_alloc_hash("sha256", 0, CRYPTO_ALG_ASYNC);
	if (IS_ERR(tfm)) {
		DWC_ERROR("Failed to load transform for sha256: %ld\n", PTR_ERR(tfm));
		return 0;
	}
	desc.tfm = tfm;
	desc.flags = 0;

	sg_init_one(&sg, message, len);
	crypto_hash_digest(&desc, &sg, len, out);
	crypto_free_hash(tfm);

	return 1;
}

int DWC_HMAC_SHA256(uint8_t *message, uint32_t messagelen,
		    uint8_t *key, uint32_t keylen, uint8_t *out)
{
	struct crypto_hash *tfm;
	struct hash_desc desc;
	struct scatterlist sg;

	tfm = crypto_alloc_hash("hmac(sha256)", 0, CRYPTO_ALG_ASYNC);
	if (IS_ERR(tfm)) {
		DWC_ERROR("Failed to load transform for hmac(sha256): %ld\n", PTR_ERR(tfm));
		return 0;
	}
	desc.tfm = tfm;
	desc.flags = 0;

	sg_init_one(&sg, message, messagelen);
	crypto_hash_setkey(tfm, key, keylen);
	crypto_hash_digest(&desc, &sg, messagelen, out);
	crypto_free_hash(tfm);

	return 1;
}
#endif	/* DWC_CRYPTOLIB */


/* Byte Ordering Conversions */

uint32_t DWC_CPU_TO_LE32(uint32_t *p)
{
#ifdef __LITTLE_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;

	return (u_p[3] | (u_p[2] << 8) | (u_p[1] << 16) | (u_p[0] << 24));
#endif
}

uint32_t DWC_CPU_TO_BE32(uint32_t *p)
{
#ifdef __BIG_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;

	return (u_p[3] | (u_p[2] << 8) | (u_p[1] << 16) | (u_p[0] << 24));
#endif
}

uint32_t DWC_LE32_TO_CPU(uint32_t *p)
{
#ifdef __LITTLE_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;

	return (u_p[3] | (u_p[2] << 8) | (u_p[1] << 16) | (u_p[0] << 24));
#endif
}

uint32_t DWC_BE32_TO_CPU(uint32_t *p)
{
#ifdef __BIG_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;

	return (u_p[3] | (u_p[2] << 8) | (u_p[1] << 16) | (u_p[0] << 24));
#endif
}

uint16_t DWC_CPU_TO_LE16(uint16_t *p)
{
#ifdef __LITTLE_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;
	return (u_p[1] | (u_p[0] << 8));
#endif
}

uint16_t DWC_CPU_TO_BE16(uint16_t *p)
{
#ifdef __BIG_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;
	return (u_p[1] | (u_p[0] << 8));
#endif
}

uint16_t DWC_LE16_TO_CPU(uint16_t *p)
{
#ifdef __LITTLE_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;
	return (u_p[1] | (u_p[0] << 8));
#endif
}

uint16_t DWC_BE16_TO_CPU(uint16_t *p)
{
#ifdef __BIG_ENDIAN
	return *p;
#else
	uint8_t *u_p = (uint8_t *)p;
	return (u_p[1] | (u_p[0] << 8));
#endif
}


/* Registers */

uint32_t DWC_READ_REG32(uint32_t volatile *reg)
{
#ifdef USE_IFX_DEV 
	return ((*(uint32_t *)reg));
#else
	return readl(reg);
#endif
}

void DWC_WRITE_REG32(uint32_t volatile *reg, uint32_t value)
{
#ifdef USE_IFX_DEV 
	*(uint32_t *)reg = value;
#else
	writel(value, reg);
#endif
}

void DWC_MODIFY_REG32(uint32_t volatile *reg, uint32_t clear_mask, uint32_t set_mask)
{
#ifdef USE_IFX_DEV 
	DWC_WRITE_REG32(reg, (DWC_READ_REG32(reg) & ~clear_mask) | set_mask);
#else
	writel((readl(reg) & ~clear_mask) | set_mask, reg);
#endif
}


/* Locking */

dwc_spinlock_t *DWC_SPINLOCK_ALLOC(void)
{
#ifndef USE_IFX_DEV 
	spinlock_t *sl = (spinlock_t *)1;

#if defined(CONFIG_PREEMPT) || defined(CONFIG_SMP)
	sl = DWC_ALLOC(sizeof(*sl));
	if (!sl) {
		DWC_ERROR("Cannot allocate memory for spinlock\n");
		return NULL;
	}

	spin_lock_init(sl);
#endif
	return (dwc_spinlock_t *)sl;

#endif

#ifdef USE_IFX_DEV 
	/* To remove compile time warning */
	return ((dwc_spinlock_t *)1);
#endif
}

void DWC_SPINLOCK_FREE(dwc_spinlock_t *lock)
{
#ifndef USE_IFX_DEV 
#if defined(CONFIG_PREEMPT) || defined(CONFIG_SMP)
	DWC_FREE(lock);
#endif
#endif
}

void DWC_SPINLOCK(dwc_spinlock_t *lock)
{
#ifndef USE_IFX_DEV
#if defined(CONFIG_PREEMPT) || defined(CONFIG_SMP)
	spin_lock((spinlock_t *)lock);
#endif
#endif
}

void DWC_SPINUNLOCK(dwc_spinlock_t *lock)
{
#ifndef USE_IFX_DEV
#if defined(CONFIG_PREEMPT) || defined(CONFIG_SMP)
	spin_unlock((spinlock_t *)lock);
#endif
#endif						 
}

void DWC_SPINLOCK_IRQSAVE(dwc_spinlock_t *lock, dwc_irqflags_t *flags)
{
#ifdef USE_IFX_DEV 
	NVIC_DisableIRQ(USB0_0_IRQn);
#else
	dwc_irqflags_t f;

#if defined(CONFIG_PREEMPT) || defined(CONFIG_SMP)
	spin_lock_irqsave((spinlock_t *)lock, f);
#else
	local_irq_save(f);
#endif
	*flags = f;
#endif
}

void DWC_SPINUNLOCK_IRQRESTORE(dwc_spinlock_t *lock, dwc_irqflags_t flags)
{
#ifdef USE_IFX_DEV 
	NVIC_EnableIRQ(USB0_0_IRQn);

#else

#if defined(CONFIG_PREEMPT) || defined(CONFIG_SMP)
	spin_unlock_irqrestore((spinlock_t *)lock, flags);
#else
	local_irq_restore(flags);
#endif

#endif
}

dwc_mutex_t *DWC_MUTEX_ALLOC(void)
{
#ifndef USE_IFX_DEV
	struct mutex *m;
	dwc_mutex_t *mutex = (dwc_mutex_t *)DWC_ALLOC(sizeof(struct mutex));

	if (!mutex) {
		DWC_ERROR("Cannot allocate memory for mutex\n");
		return NULL;
	}

	m = (struct mutex *)mutex;
	mutex_init(m);
	return mutex;
#endif
	return NULL;
}

#if (defined(DWC_LINUX) && defined(CONFIG_DEBUG_MUTEXES))
#else
void DWC_MUTEX_FREE(dwc_mutex_t *mutex)
{
#ifndef USE_IFX_DEV
	mutex_destroy((struct mutex *)mutex);
	DWC_FREE(mutex);
#endif
}
#endif

void DWC_MUTEX_LOCK(dwc_mutex_t *mutex, uint16_t TimeOut)
{
#ifndef USE_IFX_DEV
	struct mutex *m = (struct mutex *)mutex;
	mutex_lock(m);
#endif
}

int DWC_MUTEX_TRYLOCK(dwc_mutex_t *mutex)
{
#ifndef USE_IFX_DEV 
	struct mutex *m = (struct mutex *)mutex;
	return mutex_trylock(m);
#else
	/* To remove compile time warning */
	return 0;
#endif
}

void DWC_MUTEX_UNLOCK(dwc_mutex_t *mutex, uint16_t TimeOut)
{
#ifndef USE_IFX_DEV
	struct mutex *m = (struct mutex *)mutex;
	mutex_unlock(m);
#endif
}


/* Timing */

void DWC_UDELAY(uint32_t usecs)
{
	volatile uint32_t u_secs = usecs;

#ifdef USE_IFX_DEV 
	/* Minimum delay is 1ms.*/
	if(u_secs <= 1000)
	{
		USBLD001_lDelay(10);
	}
	else
	{
		u_secs = usecs / 1000;
		USBLD001_lDelay(u_secs);
	}
#else
	udelay(usecs);
#endif
}

void DWC_MDELAY(uint32_t msecs)
{
#ifdef USE_IFX_DEV 
  USBLD001_lDelay(msecs);
#else
	mdelay(msecs);
#endif
}

void DWC_MSLEEP(uint32_t msecs)
{
#ifdef USE_IFX_DEV 
	volatile uint32_t m_secs = msecs;
	USBLD001_lDelay(m_secs);
#else
	msleep(msecs);
#endif
}

uint32_t DWC_TIME(void)
{
#ifndef USE_IFX_DEV 
	return jiffies_to_msecs(jiffies);
#else
	/* To remove compile time warning. */
	return(0);
#endif
}


/* Timers */

struct dwc_timer {
	struct timer_list *t;
	char *name;
	dwc_timer_callback_t cb;
	void *data;
	uint8_t scheduled;
	dwc_spinlock_t *lock;
#ifdef USE_IFX_DEV 
	/* To store timer handle */
	uint32_t handle_t;
#endif
};

#ifndef USE_IFX_DEV 
static void timer_callback(unsigned long data)
{
	dwc_timer_t *timer = (dwc_timer_t *)data;
	dwc_irqflags_t flags;

	DWC_SPINLOCK_IRQSAVE(timer->lock, &flags);
	timer->scheduled = 0;
	DWC_SPINUNLOCK_IRQRESTORE(timer->lock, flags);
	DWC_DEBUG("Timer %s callback", timer->name);
	timer->cb(timer->data);

}
#endif

dwc_timer_t *DWC_TIMER_ALLOC(char *name, dwc_timer_callback_t cb, void *data)
{
	dwc_timer_t *t = DWC_ALLOC(sizeof(*t));

	if (!t) {
		#ifndef USE_IFX_DEV 
		DWC_ERROR("Cannot allocate memory for timer");
		#endif
		return NULL;
	}

#ifndef USE_IFX_DEV 
	t->t = DWC_ALLOC(sizeof(*t->t));
	if (!t->t) {
		DWC_ERROR("Cannot allocate memory for timer->t");
		goto no_timer;
	}

	t->name = DWC_STRDUP(name);
	if (!t->name) {
		DWC_ERROR("Cannot allocate memory for timer->name");
		goto no_name;
	}

	t->lock = DWC_SPINLOCK_ALLOC();
	if (!t->lock) {
		DWC_ERROR("Cannot allocate memory for lock");
		goto no_lock;
	}

	t->scheduled = 0;
	t->t->base = &boot_tvec_bases;
	t->t->expires = jiffies;
	setup_timer(t->t, timer_callback, (unsigned long)t);
#endif

	t->cb = cb;
	t->data = data;

	return t;

#ifndef USE_IFX_DEV 
 no_lock:
	DWC_FREE(t->name);
 no_name:
	DWC_FREE(t->t);
 no_timer:
	DWC_FREE(t);
	return NULL;
#endif
}

void DWC_TIMER_FREE(dwc_timer_t *timer)
{
#ifndef USE_IFX_DEV 
	dwc_irqflags_t flags;

	DWC_SPINLOCK_IRQSAVE(timer->lock, &flags);

	if (timer->scheduled) {
		del_timer(timer->t);
		timer->scheduled = 0;
	}

	DWC_SPINUNLOCK_IRQRESTORE(timer->lock, flags);
	DWC_SPINLOCK_FREE(timer->lock);
	DWC_FREE(timer->t);
	DWC_FREE(timer->name);
#else
	DWC_TIMER_CANCEL(timer);
	DWC_FREE(timer);
#endif
}

void DWC_TIMER_SCHEDULE(dwc_timer_t *timer, uint32_t time)
{
#ifndef USE_IFX_DEV
	dwc_irqflags_t flags;

	DWC_SPINLOCK_IRQSAVE(timer->lock, &flags);

	if (!timer->scheduled) {
		timer->scheduled = 1;
		DWC_DEBUG("Scheduling timer %s to expire in +%d msec", timer->name, time);
		timer->t->expires = jiffies + msecs_to_jiffies(time);
		add_timer(timer->t);
	} else {
		DWC_DEBUG("Modifying timer %s to expire in +%d msec", timer->name, time);
		mod_timer(timer->t, jiffies + msecs_to_jiffies(time));
	}

	DWC_SPINUNLOCK_IRQRESTORE(timer->lock, flags);
#endif	
		
}

void DWC_TIMER_CANCEL(dwc_timer_t *timer)
{
#ifndef USE_IFX_DEV
	del_timer(timer->t);
#endif
}


/* Wait Queues */

struct dwc_waitq {
#ifndef USE_IFX_DEV 
	wait_queue_head_t queue;
#endif
	int abort;
};

dwc_waitq_t *DWC_WAITQ_ALLOC(void)
{
#ifndef USE_IFX_DEV 
	dwc_waitq_t *wq = DWC_ALLOC(sizeof(*wq));

	if (!wq) {
		DWC_ERROR("Cannot allocate memory for waitqueue\n");
		return NULL;
	}

	init_waitqueue_head(&wq->queue);
	wq->abort = 0;
	return wq;
#else
	/* Just to remove compile time warning */ 
	return(0);
#endif
}

void DWC_WAITQ_FREE(dwc_waitq_t *wq)
{
#ifndef USE_IFX_DEV 	
	DWC_FREE(wq);
#endif
}

int32_t DWC_WAITQ_WAIT(dwc_waitq_t *wq, dwc_waitq_condition_t cond, void *data)
{
#ifndef USE_IFX_DEV 	
	int result = wait_event_interruptible(wq->queue,
					      cond(data) || wq->abort);
	if (result == -ERESTARTSYS) {
		wq->abort = 0;
		return -DWC_E_RESTART;
	}

	if (wq->abort == 1) {
		wq->abort = 0;
		return -DWC_E_ABORT;
	}

	wq->abort = 0;

	if (result == 0) {
		return 0;
	}

	return -DWC_E_UNKNOWN;
#else
	/* To remove compile time warning */
	return(0);
#endif
}

int32_t DWC_WAITQ_WAIT_TIMEOUT(dwc_waitq_t *wq, dwc_waitq_condition_t cond,
			       void *data, int32_t msecs)
{
#ifndef USE_IFX_DEV 	
	int32_t tmsecs;
	int result = wait_event_interruptible_timeout(wq->queue,
						      cond(data) || wq->abort,
						      msecs_to_jiffies(msecs));
	if (result == -ERESTARTSYS) {
		wq->abort = 0;
		return -DWC_E_RESTART;
	}

	if (wq->abort == 1) {
		wq->abort = 0;
		return -DWC_E_ABORT;
	}

	wq->abort = 0;

	if (result > 0) {
		tmsecs = jiffies_to_msecs(result);
		if (!tmsecs) {
			return 1;
		}

		return tmsecs;
	}

	if (result == 0) {
		return -DWC_E_TIMEOUT;
	}

	return -DWC_E_UNKNOWN;
#else
	/* Just to remove compile time warning */
	return(0);
#endif

}

void DWC_WAITQ_TRIGGER(dwc_waitq_t *wq)
{
#ifndef USE_IFX_DEV 		
	wq->abort = 0;
	wake_up_interruptible(&wq->queue);
#endif
}

void DWC_WAITQ_ABORT(dwc_waitq_t *wq)
{
#ifndef USE_IFX_DEV 		
	wq->abort = 1;
	wake_up_interruptible(&wq->queue);
#endif
}



/* Threading */

dwc_thread_t *DWC_THREAD_RUN(dwc_thread_function_t func, char *name, void *data)
{
#ifndef USE_IFX_DEV 		
	struct task_struct *thread = kthread_run(func, data, name);

	if (thread == ERR_PTR(-ENOMEM)) {
		return NULL;
	}

	return (dwc_thread_t *)thread;
#else
	/* Just to remove compile time warning */
	return(0) ;
#endif
}

int DWC_THREAD_STOP(dwc_thread_t *thread)
{
#ifndef USE_IFX_DEV 		
	return kthread_stop((struct task_struct *)thread);
#else
	/* Just to remove compile time warning */
	return(0);
#endif
}

dwc_bool_t DWC_THREAD_SHOULD_STOP(void)
{
#ifndef USE_IFX_DEV 		
	return kthread_should_stop();
#else
	/* Just to remove compile time warning */
	return(0);
#endif
}


/* tasklets
 - run in interrupt context (cannot sleep)
 - each tasklet runs on a single CPU
 - different tasklets can be running simultaneously on different CPUs
 */
struct dwc_tasklet {
	#ifndef USE_IFX_DEV 		
	struct tasklet_struct t;
	#endif
	dwc_tasklet_callback_t cb;
	void *data;
	
	#ifdef USE_IFX_DEV 		
	/* To store timer handle */
	uint32_t handle_t;
	#endif
};

#ifndef USE_IFX_DEV 		
static void tasklet_callback(unsigned long data)
{
	dwc_tasklet_t *t = (dwc_tasklet_t *)data;
	t->cb(t->data);
}
#endif

dwc_tasklet_t *DWC_TASK_ALLOC(char *name, dwc_tasklet_callback_t cb, void *data)
{
	dwc_tasklet_t *t = DWC_ALLOC(sizeof(*t));

	if (t) {
		t->cb = cb;
		t->data = data;
		#ifndef USE_IFX_DEV 		
		tasklet_init(&t->t, tasklet_callback, (unsigned long)t);
		#endif
	} else {
		#ifndef USE_IFX_DEV 		
		DWC_ERROR("Cannot allocate memory for tasklet\n");
		#endif
	}

	return t;
}

void DWC_TASK_FREE(dwc_tasklet_t *task)
{
#ifdef USE_IFX_DEV 		
	DWC_TIMER_CANCEL((dwc_timer_t *)task);
#endif

	DWC_FREE(task);
}

void DWC_TASK_SCHEDULE(dwc_tasklet_t *task)
{
#ifndef USE_IFX_DEV
	tasklet_schedule(&task->t);
#endif
}


/* workqueues
 - run in process context (can sleep)
 */
typedef struct work_container {
	dwc_work_callback_t cb;
	void *data;
	dwc_workq_t *wq;
	char *name;

#ifdef DEBUG
	DWC_CIRCLEQ_ENTRY(work_container) entry;
#endif
#ifndef USE_IFX_DEV
	struct delayed_work work;
#endif
} work_container_t;

#ifdef DEBUG
DWC_CIRCLEQ_HEAD(work_container_queue, work_container);
#endif

struct dwc_workq {
	struct workqueue_struct *wq;
	dwc_spinlock_t *lock;
	dwc_waitq_t *waitq;
	int pending;

#ifdef DEBUG
	struct work_container_queue entries;
#endif

#ifdef USE_IFX_DEV
	/* To store timer handle */
	uint32_t handle_t;
#endif
};

#ifndef USE_IFX_DEV
static void do_work(struct work_struct *work)
{
	dwc_irqflags_t flags;
	struct delayed_work *dw = container_of(work, struct delayed_work, work);
	work_container_t *container = container_of(dw, struct work_container, work);
	dwc_workq_t *wq = container->wq;

	container->cb(container->data);

#ifdef DEBUG
	DWC_CIRCLEQ_REMOVE(&wq->entries, container, entry);
#endif
	DWC_DEBUG("Work done: %s, container=%p", container->name, container);
	if (container->name) {
		DWC_FREE(container->name);
	}
	DWC_FREE(container);

	DWC_SPINLOCK_IRQSAVE(wq->lock, &flags);
	wq->pending--;
	DWC_SPINUNLOCK_IRQRESTORE(wq->lock, flags);
	DWC_WAITQ_TRIGGER(wq->waitq);
}
#endif


#ifndef USE_IFX_DEV
static int work_done(void *data)
{
	dwc_workq_t *workq = (dwc_workq_t *)data;
	return workq->pending == 0;
}
#endif

int DWC_WORKQ_WAIT_WORK_DONE(dwc_workq_t *workq, int timeout)
{
#ifndef USE_IFX_DEV
	return DWC_WAITQ_WAIT_TIMEOUT(workq->waitq, work_done, workq, timeout);
#else
	/* Just to remove compile time warning */
	return 0;	
#endif		
}


dwc_workq_t *DWC_WORKQ_ALLOC(char *name)
{
	dwc_workq_t *wq = DWC_ALLOC(sizeof(*wq));

	if (!wq) {
		return NULL;
	}

#ifndef USE_IFX_DEV
	wq->wq = create_singlethread_workqueue(name);
	if (!wq->wq) {
		goto no_wq;
	}

	wq->pending = 0;

	wq->lock = DWC_SPINLOCK_ALLOC();
	if (!wq->lock) {
		goto no_lock;
	}

	wq->waitq = DWC_WAITQ_ALLOC();
	if (!wq->waitq) {
		goto no_waitq;
	}

#ifdef DEBUG
	DWC_CIRCLEQ_INIT(&wq->entries);
#endif
#endif

	return wq;

#ifndef USE_IFX_DEV
 no_waitq:
	DWC_SPINLOCK_FREE(wq->lock);
 no_lock:
	destroy_workqueue(wq->wq);
 no_wq:
	DWC_FREE(wq);

	return NULL;
#endif
}

void DWC_WORKQ_FREE(dwc_workq_t *wq)
{
#ifndef USE_IFX_DEV
#ifdef DEBUG
	if (wq->pending != 0) {
		struct work_container *wc;
		DWC_ERROR("Destroying work queue with pending work");
		DWC_CIRCLEQ_FOREACH(wc, &wq->entries, entry) {
			DWC_ERROR("Work %s still pending", wc->name);
		}
	}
#endif
	destroy_workqueue(wq->wq);
	DWC_SPINLOCK_FREE(wq->lock);
	DWC_WAITQ_FREE(wq->waitq);
#endif

   	DWC_TIMER_CANCEL((dwc_timer_t *)wq);
	DWC_FREE(wq);
}


void DWC_WORKQ_SCHEDULE(dwc_workq_t *wq, dwc_work_callback_t cb, void *data,
			char *format, ...)
{
#ifndef USE_IFX_DEV
	dwc_irqflags_t flags;
	work_container_t *container;
	static char name[128];
	va_list args;

	va_start(args, format);
	DWC_VSNPRINTF(name, 128, format, args);
	va_end(args);

	DWC_SPINLOCK_IRQSAVE(wq->lock, &flags);
	wq->pending++;
	DWC_SPINUNLOCK_IRQRESTORE(wq->lock, flags);
	DWC_WAITQ_TRIGGER(wq->waitq);

	container = DWC_ALLOC_ATOMIC(sizeof(*container));
	if (!container) {
		DWC_ERROR("Cannot allocate memory for container\n");
		return;
	}

	container->name = DWC_STRDUP(name);
	if (!container->name) {
		DWC_ERROR("Cannot allocate memory for container->name\n");
		DWC_FREE(container);
		return;
	}

	container->cb = cb;
	container->data = data;
	container->wq = wq;
	DWC_DEBUG("Queueing work: %s, container=%p", container->name, container);
	INIT_WORK(&container->work.work, do_work);

#ifdef DEBUG
	DWC_CIRCLEQ_INSERT_TAIL(&wq->entries, container, entry);
#endif
	queue_work(wq->wq, &container->work.work);

#endif
}

void DWC_WORKQ_SCHEDULE_DELAYED(dwc_workq_t *wq, dwc_work_callback_t cb,
				void *data, uint32_t time, char *format, ...)
{
#ifndef USE_IFX_DEV
	dwc_irqflags_t flags;
	work_container_t *container;
	static char name[128];
	va_list args;

	va_start(args, format);
	DWC_VSNPRINTF(name, 128, format, args);
	va_end(args);

	DWC_SPINLOCK_IRQSAVE(wq->lock, &flags);
	wq->pending++;
	DWC_SPINUNLOCK_IRQRESTORE(wq->lock, flags);
	DWC_WAITQ_TRIGGER(wq->waitq);

	container = DWC_ALLOC_ATOMIC(sizeof(*container));
	if (!container) {
		DWC_ERROR("Cannot allocate memory for container\n");
		return;
	}

	container->name = DWC_STRDUP(name);
	if (!container->name) {
		DWC_ERROR("Cannot allocate memory for container->name\n");
		DWC_FREE(container);
		return;
	}

	container->cb = cb;
	container->data = data;
	container->wq = wq;
	DWC_DEBUG("Queueing work: %s, container=%p", container->name, container);
	INIT_DELAYED_WORK(&container->work, do_work);

#ifdef DEBUG
	DWC_CIRCLEQ_INSERT_TAIL(&wq->entries, container, entry);
#endif
	queue_delayed_work(wq->wq, &container->work, msecs_to_jiffies(time));
#endif
}

int DWC_WORKQ_PENDING(dwc_workq_t *wq)
{
#ifndef USE_IFX_DEV
	return wq->pending;
#else
	/* Just to remove complie time warning */
	return(0);
#endif
}


#ifdef DWC_LIBMODULE

#ifdef DWC_CCLIB
/* CC */
EXPORT_SYMBOL(dwc_cc_if_alloc);
EXPORT_SYMBOL(dwc_cc_if_free);
EXPORT_SYMBOL(dwc_cc_clear);
EXPORT_SYMBOL(dwc_cc_add);
EXPORT_SYMBOL(dwc_cc_remove);
EXPORT_SYMBOL(dwc_cc_change);
EXPORT_SYMBOL(dwc_cc_data_for_save);
EXPORT_SYMBOL(dwc_cc_restore_from_data);
EXPORT_SYMBOL(dwc_cc_match_chid);
EXPORT_SYMBOL(dwc_cc_match_cdid);
EXPORT_SYMBOL(dwc_cc_ck);
EXPORT_SYMBOL(dwc_cc_chid);
EXPORT_SYMBOL(dwc_cc_cdid);
EXPORT_SYMBOL(dwc_cc_name);
#endif	/* DWC_CCLIB */

#ifdef DWC_CRYPTOLIB
# ifndef CONFIG_MACH_IPMATE
/* Modpow */
EXPORT_SYMBOL(dwc_modpow);

/* DH */
EXPORT_SYMBOL(dwc_dh_modpow);
EXPORT_SYMBOL(dwc_dh_derive_keys);
EXPORT_SYMBOL(dwc_dh_pk);
# endif	/* CONFIG_MACH_IPMATE */

/* Crypto */
EXPORT_SYMBOL(dwc_wusb_aes_encrypt);
EXPORT_SYMBOL(dwc_wusb_cmf);
EXPORT_SYMBOL(dwc_wusb_prf);
EXPORT_SYMBOL(dwc_wusb_fill_ccm_nonce);
EXPORT_SYMBOL(dwc_wusb_gen_nonce);
EXPORT_SYMBOL(dwc_wusb_gen_key);
EXPORT_SYMBOL(dwc_wusb_gen_mic);
#endif	/* DWC_CRYPTOLIB */

/* Notification */
#ifdef DWC_NOTIFYLIB
EXPORT_SYMBOL(dwc_alloc_notification_manager);
EXPORT_SYMBOL(dwc_free_notification_manager);
EXPORT_SYMBOL(dwc_register_notifier);
EXPORT_SYMBOL(dwc_unregister_notifier);
EXPORT_SYMBOL(dwc_add_observer);
EXPORT_SYMBOL(dwc_remove_observer);
EXPORT_SYMBOL(dwc_notify);
#endif

/* Memory Debugging Routines */
#ifdef DWC_DEBUG_MEMORY
EXPORT_SYMBOL(dwc_alloc_debug);
EXPORT_SYMBOL(dwc_alloc_atomic_debug);
EXPORT_SYMBOL(dwc_free_debug);
EXPORT_SYMBOL(dwc_dma_alloc_debug);
EXPORT_SYMBOL(dwc_dma_free_debug);
#endif

EXPORT_SYMBOL(DWC_MEMSET);
EXPORT_SYMBOL(DWC_MEMCPY);
EXPORT_SYMBOL(DWC_MEMMOVE);
EXPORT_SYMBOL(DWC_MEMCMP);
EXPORT_SYMBOL(DWC_STRNCMP);
EXPORT_SYMBOL(DWC_STRCMP);
EXPORT_SYMBOL(DWC_STRLEN);
EXPORT_SYMBOL(DWC_STRCPY);
EXPORT_SYMBOL(DWC_STRDUP);
EXPORT_SYMBOL(DWC_ATOI);
EXPORT_SYMBOL(DWC_ATOUI);

#ifdef DWC_UTFLIB
EXPORT_SYMBOL(DWC_UTF8_TO_UTF16LE);
#endif	/* DWC_UTFLIB */

EXPORT_SYMBOL(DWC_IN_IRQ);
EXPORT_SYMBOL(DWC_IN_BH);
EXPORT_SYMBOL(DWC_VPRINTF);
EXPORT_SYMBOL(DWC_VSNPRINTF);
EXPORT_SYMBOL(DWC_PRINTF);
EXPORT_SYMBOL(DWC_SPRINTF);
EXPORT_SYMBOL(DWC_SNPRINTF);
EXPORT_SYMBOL(__DWC_WARN);
EXPORT_SYMBOL(__DWC_ERROR);
EXPORT_SYMBOL(DWC_EXCEPTION);

#ifdef DEBUG
EXPORT_SYMBOL(__DWC_DEBUG);
#endif

EXPORT_SYMBOL(__DWC_DMA_ALLOC);
EXPORT_SYMBOL(__DWC_DMA_ALLOC_ATOMIC);
EXPORT_SYMBOL(__DWC_DMA_FREE);
EXPORT_SYMBOL(__DWC_ALLOC);
EXPORT_SYMBOL(__DWC_ALLOC_ATOMIC);
EXPORT_SYMBOL(__DWC_FREE);

#ifdef DWC_CRYPTOLIB
EXPORT_SYMBOL(DWC_RANDOM_BYTES);
EXPORT_SYMBOL(DWC_AES_CBC);
EXPORT_SYMBOL(DWC_SHA256);
EXPORT_SYMBOL(DWC_HMAC_SHA256);
#endif

EXPORT_SYMBOL(DWC_CPU_TO_LE32);
EXPORT_SYMBOL(DWC_CPU_TO_BE32);
EXPORT_SYMBOL(DWC_LE32_TO_CPU);
EXPORT_SYMBOL(DWC_BE32_TO_CPU);
EXPORT_SYMBOL(DWC_CPU_TO_LE16);
EXPORT_SYMBOL(DWC_CPU_TO_BE16);
EXPORT_SYMBOL(DWC_LE16_TO_CPU);
EXPORT_SYMBOL(DWC_BE16_TO_CPU);
EXPORT_SYMBOL(DWC_READ_REG32);
EXPORT_SYMBOL(DWC_WRITE_REG32);
EXPORT_SYMBOL(DWC_MODIFY_REG32);

EXPORT_SYMBOL(DWC_SPINLOCK_ALLOC);
EXPORT_SYMBOL(DWC_SPINLOCK_FREE);
EXPORT_SYMBOL(DWC_SPINLOCK);
EXPORT_SYMBOL(DWC_SPINUNLOCK);
EXPORT_SYMBOL(DWC_SPINLOCK_IRQSAVE);
EXPORT_SYMBOL(DWC_SPINUNLOCK_IRQRESTORE);
EXPORT_SYMBOL(DWC_MUTEX_ALLOC);

#if (!defined(DWC_LINUX) || !defined(CONFIG_DEBUG_MUTEXES))
EXPORT_SYMBOL(DWC_MUTEX_FREE);
#endif

EXPORT_SYMBOL(DWC_MUTEX_LOCK);
EXPORT_SYMBOL(DWC_MUTEX_TRYLOCK);
EXPORT_SYMBOL(DWC_MUTEX_UNLOCK);
EXPORT_SYMBOL(DWC_UDELAY);
EXPORT_SYMBOL(DWC_MDELAY);
EXPORT_SYMBOL(DWC_MSLEEP);
EXPORT_SYMBOL(DWC_TIME);
EXPORT_SYMBOL(DWC_TIMER_ALLOC);
EXPORT_SYMBOL(DWC_TIMER_FREE);
EXPORT_SYMBOL(DWC_TIMER_SCHEDULE);
EXPORT_SYMBOL(DWC_TIMER_CANCEL);
EXPORT_SYMBOL(DWC_WAITQ_ALLOC);
EXPORT_SYMBOL(DWC_WAITQ_FREE);
EXPORT_SYMBOL(DWC_WAITQ_WAIT);
EXPORT_SYMBOL(DWC_WAITQ_WAIT_TIMEOUT);
EXPORT_SYMBOL(DWC_WAITQ_TRIGGER);
EXPORT_SYMBOL(DWC_WAITQ_ABORT);
EXPORT_SYMBOL(DWC_THREAD_RUN);
EXPORT_SYMBOL(DWC_THREAD_STOP);
EXPORT_SYMBOL(DWC_THREAD_SHOULD_STOP);
EXPORT_SYMBOL(DWC_TASK_ALLOC);
EXPORT_SYMBOL(DWC_TASK_FREE);
EXPORT_SYMBOL(DWC_TASK_SCHEDULE);
EXPORT_SYMBOL(DWC_WORKQ_WAIT_WORK_DONE);
EXPORT_SYMBOL(DWC_WORKQ_ALLOC);
EXPORT_SYMBOL(DWC_WORKQ_FREE);
EXPORT_SYMBOL(DWC_WORKQ_SCHEDULE);
EXPORT_SYMBOL(DWC_WORKQ_SCHEDULE_DELAYED);
EXPORT_SYMBOL(DWC_WORKQ_PENDING);

static int dwc_common_port_init_module(void)
{
#ifndef USE_IFX_DEV
	int result = 0;

	printk(KERN_DEBUG "Module dwc_common_port init\n" );

#ifdef DWC_DEBUG_MEMORY
	result = dwc_memory_debug_start(NULL);
	if (result) {
		printk(KERN_ERR
		       "dwc_memory_debug_start() failed with error %d\n",
		       result);
		return result;
	}
#endif

#ifdef DWC_NOTIFYLIB
	result = dwc_alloc_notification_manager(NULL, NULL);
	if (result) {
		printk(KERN_ERR
		       "dwc_alloc_notification_manager() failed with error %d\n",
		       result);
		return result;
	}
#endif
	return result;
#endif

#ifdef USE_IFX_DEV
	/* Just to remove compile time warning */
	return(0);
#endif
}

static void dwc_common_port_exit_module(void)
{
#ifndef USE_IFX_DEV
	printk(KERN_DEBUG "Module dwc_common_port exit\n" );

#ifdef DWC_NOTIFYLIB
	dwc_free_notification_manager();
#endif

#ifdef DWC_DEBUG_MEMORY
	dwc_memory_debug_stop();
#endif
#endif
}

module_init(dwc_common_port_init_module);
module_exit(dwc_common_port_exit_module);

MODULE_DESCRIPTION("DWC Common Library - Portable version");
MODULE_AUTHOR("Synopsys Inc.");
MODULE_LICENSE ("GPL");

#endif	/* DWC_LIBMODULE */
