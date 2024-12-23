struct process {
    uint32_t pid;
    void* stack;
    void* page_directory;
    enum process_state state;
};

void schedule();
pid_t create_process(void* entry_point);