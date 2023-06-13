/*
	1) Set the run bit ( only need to do this once )

	2) Wait for DMA idle ( only after the first transfer )

	3) write the S2MM address and transfer length (bytes)	

	4) write the MM2S address and transfer length
*/

#include "xaxidma.h"
#include "xparameters.h"
#include "sleep.h"
#include "xil_cache.h"

u32 checkHalted(u32 baseAddress,u32 offset);
u32 checkIdle(u32 baseAddress,u32 offset);
void printRegisters(void);
int main(){

	u32 a[] = {1,2,3,4,5,6,7,8};
	u32 b[8];
    	u32 status;

	XAxiDma_Config *myDmaConfig;
	XAxiDma myDma;

	myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
	status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
	if(status != XST_SUCCESS){
		print("DMA initialization failed\r\n");
		return -1;
	}
	xil_printf("DMA initialization success..\r\n");

	/*
	 * For Direct Register Mode this bit gets set when
	 * DMACR.RS = 0 and DMA operations have halted.
	 *
	 */
	status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x4);
	xil_printf("MM2S halt bit before data transfer %0x\r\n",status);
	status = checkHalted(XPAR_AXI_DMA_0_BASEADDR,0x34);
	xil_printf("S2MM halt bit before data transfer %0x\r\n",status);

	/*
	 * For Direct Register Mode IDLE indicates the current
	 * transfer has completed.
	 */
	status = checkIdle(XPAR_AXI_DMA_0_BASEADDR,0x4);
	xil_printf("MM2S idle bit before data transfer %0x\r\n",status);
	status = checkIdle(XPAR_AXI_DMA_0_BASEADDR,0x34);
	xil_printf("S2MM idle bit before data transfer %0x\r\n",status);

	xil_printf("Total control/status registers before transfer:\r\n");
	printRegisters();

	Xil_DCacheFlushRange((u32)b,8*sizeof(u32));
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+0x30, 0x1); // <-- S2MM start bit
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+0x48, (u32)b); // <-- S2MM destination address
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+0x58, sizeof(b)); // <-- S2MM length address
//	status = XAxiDma_SimpleTransfer(&myDma, (u32)b, 8*sizeof(u32),XAXIDMA_DEVICE_TO_DMA);
	Xil_DCacheFlushRange((u32)b,8*sizeof(u32));

	Xil_DCacheInvalidateRange((u32)a,8*sizeof(u32));
	Xil_DCacheFlushRange((u32)a,8*sizeof(u32));
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+0x0, 0x1);
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+0x18, (u32)a); // <-- M2SS source address
	Xil_Out32(XPAR_AXI_DMA_0_BASEADDR+0x28, sizeof(a)); // <-- M2SS length address
//	status = XAxiDma_SimpleTransfer(&myDma, (u32)a, 8*sizeof(u32),XAXIDMA_DMA_TO_DEVICE);
	Xil_DCacheFlushRange((u32)a,8*sizeof(u32));


	xil_printf("Total control/status registers after transfer:\r\n");
	printRegisters();

	status = checkIdle(XPAR_AXI_DMA_0_BASEADDR,0x34);
	    while(status != 2)
	    	status = checkIdle(XPAR_AXI_DMA_0_BASEADDR,0x34);
    status = checkIdle(XPAR_AXI_DMA_0_BASEADDR,0x4);
    while(status != 2)
    	status = checkIdle(XPAR_AXI_DMA_0_BASEADDR,0x4);

	xil_printf("DMA transfer success..\r\n");
	for(int i=0;i<8;i++)
		xil_printf("%0x\r\n",b[i]);
}

void printRegisters(void){
	xil_printf("\r\nS2MM CR:\tx%0x\r\n", XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x30));
	xil_printf("S2MM SR:\tx%0x\r\n", XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x34));
	xil_printf("MM2S CR:\tx%0x\r\n", XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x00));
	xil_printf("MM2S SR:\tx%0x\r\n", XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR,0x04));
}

u32 checkIdle(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_IDLE_MASK;
	return status;
}

u32 checkHalted(u32 baseAddress,u32 offset){
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}
