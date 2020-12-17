// Numero de tenedores
#define N 5

// Definicion de inlines LEFT e RIGHT
#define LEFT(procid) ((procid+(N-1))%N)
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
    if
        :: status[procid] == hungry && status[LEFT(procid)] != eating && status[RIGHT(procid)] != eating -> status[procid] = eating; signal(S[procid]);
        :: else -> skip;
        
    fi
}

active[N] proctype philosopher()
{
    do
    ::  printf("%d is thinking\n", _pid);
        // Coger los tenedores
        wait(mutex);
        status[_pid] = hungry;
        // Mirar si se puede comer: si se puede, se come, si no se espera hasta
        // que otro filósofo avise
        test(_pid)
        signal(mutex)
        // Si no se pudo comer, se espera hasta que otro filosofo avise.
        wait(S[_pid])

  cs: printf("%d is eating\n", _pid);
        // Dejar los tenedores
        wait(mutex)
        // Cambio de estado para que otros filosofos puedan comer
        status[_pid] = thinking
        // Se avisa al filósofo de la derecha
        test(RIGHT(_pid));
        // Se avisa al filósofo de la izquierda
        test(LEFT(_pid))
        signal(mutex)
    od
}