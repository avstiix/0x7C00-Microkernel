struct page_table {
    uint32_t entries[1024];
};

void init_paging();
void map_page(void* physical, void* virtual, uint32_t flags);