// Numero de tenedores
#define N 5

// Variable general que representa el turno
byte turn = 0

active[N] proctype philosopher()
{
    // Fixed turn
    do
    ::  printf("%d is thinking\n", _pid);
    turn ==_pid;
  cs: printf("%d is eating\n", _pid);
    turn = (_pid + 1) % N
    od
}