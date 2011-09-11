provider erlang {
    /**
     * Fired when a message is sent from one local process to another.
     *
     * @param sender the PID (string form) of the sender
     * @param receiver the PID (string form) of the receiver
     * @param size the size of the message being delivered
     */
    probe send(char *sender, char *receiver, uint32_t size);

    /**
     * Fired when an Eterm structure is being copied.
     *
     * @param size the size of the structure
     */
    probe copy_struct(uint32_t size);

    /**
     * Fired when an Eterm is being copied onto a process.
     *
     * @param proc the PID (string form) of the recipient process
     * @param size the size of the structure
     */
    probe copy_object(char *proc, uint32_t size);

    /* PID, Module, Function, Arity */

    /**
     * Fired whenever a user function is being called.
     *
     * @param p the PID (string form) of the process
     * @param mfa the m:f/a of the function
     */
    probe function__entry(char *p, char *mfa);

    /**
     * Fired whenever a user function returns.
     *
     * @param p the PID (string form) of the process
     * @param mfa the m:f/a of the function
     */
    probe function__return(char *p, char *mfa);

    /**
     * Fired whenever a Built In Function is called.
     *
     * @param p the PID (string form) of the process
     * @param mfa the m:f/a of the function
     */
    probe bif__entry(char *p, char *mfa);

    /**
     * Fired whenever a Built In Function returns.
     *
     * @param p the PID (string form) of the process
     * @param mfa the m:f/a of the function
     */
    probe bif__return(char *p, char *mfa);

    /**
     * Fired whenever a Native Function is called.
     *
     * @param p the PID (string form) of the process
     * @param mfa the m:f/a of the function
     */
    probe nif__entry(char *p, char *mfa);

    /**
     * Fired whenever a Native Function returns.
     *
     * @param p the PID (string form) of the process
     * @param mfa the m:f/a of the function
     */
    probe nif__return(char *p, char *mfa);

    /**
     * Fired when a process is spawned.
     *
     * @param p the PID (string form) of the new process.
     * @param mfa the m:f/a of the function
     */
    probe spawn(char *p, char *mfa);

    /**
     * Fired when a process is exiting.
     *
     * @param p the PID (string form) of the exiting process
     * @param reason the reason for the exit (may be truncated)
     */
    probe exit(char *p, char *reason);

    /**
     * Fired when a major GC is starting.
     *
     * @param p the PID (string form) of the exiting process
     * @param need the number of words needed on the heap
     */
    probe gc_major__start(char *p, int need);

    /**
     * Fired when a minor GC is starting.
     *
     * @param p the PID (string form) of the exiting process
     * @param need the number of words needed on the heap
     */
    probe gc_minor__start(char *p, int need);

    /**
     * Fired when a major GC is starting.
     *
     * @param p the PID (string form) of the exiting process
     * @param reclaimed the amount of space reclaimed
     */
    probe gc_major__end(char *p, int reclaimed);

    /**
     * Fired when a minor GC is starting.
     *
     * @param p the PID (string form) of the exiting process
     * @param reclaimed the amount of space reclaimed
     */
    probe gc_minor__end(char *p, int reclaimed);
};
