// Numero de tenedores
#define N 5

// Definicion de inlines LEFT e RIGHT
#define LEFT(procid) ((procid-1)%N)
#define RIGHT(procid) ((procid+1)%N)

// Posibles estados de un filósofo
mtype = {thinking, eating, hungry};

// Array de estados de los filósofos
mtype status[N] = thinking;

// Array de semaforos
bool S[N] = 0;

// Mutex para la mesa
bool mutex = 1;

// Definicion de wait
inline wait(mutex)
{
    atomic
    {
        mutex != 0;
        mutex = 0; 
    }
}

// Definicion de signal
inline signal(mutex)
{
    mutex = 1;

}

// Definicion de funcion test
inline test(procid)
{
    atomic
    {
        status[procid] == hungry && status[LEFT(procid)] != eating && status[RIGHT(procid)] != eating;
        status[procid] = eating;
        signal(S[procid])
    }
}


active[N] proctype philosopher()
{
    do
    ::  printf("%d is thinking\n", _pid);
        wait(mutex);
        status[_pid] = hungry;
        test(_pid)
        signal(mutex)
        wait(S[_pid])

  cs: printf("%d is eating\n", _pid);

        wait(mutex)
        status[_pid] = thinking
        test(RIGHT(_pid));
        test(LEFT(_pid))
        signal(mutex)
    od
}