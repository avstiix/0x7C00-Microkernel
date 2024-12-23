#include <stdint.h>
#include <sys/types.h>

struct message {
    uint32_t sender;
    uint32_t receiver;
    uint32_t type;
    char data[256];
};

int send_message(uint32_t dest, struct message* msg);
int receive_message(struct message* msg);