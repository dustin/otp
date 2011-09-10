provider erlang {
    probe send(void *sender, void*receiver, uint32_t size);
    probe copy_struct(uint32_t size);

    /* PID, Module, Function, Arity */
    probe function__entry(char *, char*, char*, int);
};
