#include <stdint.h>

struct process {
    uint32_t pid;
    void* stack;
    void* page_directory;
    enum process_state state;
};

void schedule();
uint32_t create_process(void* entry_point);