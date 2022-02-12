#ifndef SCE_KERNEL_THREAD_MGR_H
#define SCE_KERNEL_THREAD_MGR_H

#include <psp2common/types.h>

typedef struct {
	Thread thread;
	SceUID thid;
	char name[32];
	SceKernelThreadEntry entry;
	int args;
	void *argp;
	int return_status;
	void **vita_tls;
} VitaThreadInfo;

int SceKernelThreadMgr_init(void);
VitaThreadInfo *SceKernelThreadMgr_get_thread_info(void);
int SceKernelThreadMgr_main_entry(SceKernelThreadEntry entry, int args, void *argp);

#endif
