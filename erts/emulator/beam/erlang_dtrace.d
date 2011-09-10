provider erlang {
    probe send(void *sender, void*receiver, uint32_t size);
    probe copy_struct(uint32_t size);

    /* PID, Module, Function, Arity */
    probe function__entry(char *, char*, char*, int);
    probe bif__entry(char *, char*, char*, int);
    probe nif__entry(char *, char*, char*, int);

    probe bif__return(char *, char*, char*, int);
    probe nif__return(char *, char*, char*, int);
};
