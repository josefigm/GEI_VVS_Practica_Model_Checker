// Numero de tenedores
#define N 4

// Definicion de constantes LEFT e RIGHT
#define LEFT _pid 
#define RIGHT ((_pid + 1)%N)

// Variable compartida que determina si
// los tenedores están sobre la mesa
bool onTable[N]=1;

// Definicion de macro que representa
// un wait
inline pick_fork(tenedor)
{
    atomic
    {
        onTable[tenedor] != 0;
        onTable[tenedor] = 0;
    }
}


// Definicion de macro que representa
// un signal
inline leave_fork(tenedor)
{
    onTable[tenedor] = 1;
}

active[N] proctype philosopher()
{
    do
    ::  printf("%d is thinking\n", _pid);
      pick_fork(LEFT);
      pick_fork(RIGHT);

  cs: printf("%d is eating\n", _pid);

      leave_fork(RIGHT);
      leave_fork(LEFT)
  od
}

init
{
    run philosopher();

}