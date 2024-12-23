#include "ipc.h"
#include "mmu.h"
#include "process.h"

void kernel_main() {
    init_paging();
    
    uint32_t pid = create_process(NULL);  // You'll need to specify an actual entry point
    
    schedule();
    
    while(1) {
    }
} 