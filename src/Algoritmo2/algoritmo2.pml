// Numero de tenedores
#define N 5

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
        onTable[tenedor] != 0;
        onTable[tenedor] = 0;
}


// Definicion de macro que representa
// un signal
inline leave_fork(tenedor)
{
    onTable[tenedor] = 1;
}


active[N] proctype philosopher()
{
    // Dijkstra's solution

    int greater_fork = (LEFT > RIGHT -> LEFT : RIGHT);
    int minor_fork = (LEFT < RIGHT -> LEFT : RIGHT);
    
    do
    ::  printf("%d is thinking\n", _pid);
        pick_fork(minor_fork);
        pick_fork(greater_fork);

  cs: printf("%d is eating\n", _pid);

      leave_fork(RIGHT);
      leave_fork(LEFT)
    od
}