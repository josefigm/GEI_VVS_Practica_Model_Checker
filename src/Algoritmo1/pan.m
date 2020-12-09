#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM never_0 */
	case 3: // STATE 1 - algoritmo1_mutual_exclusion.pml.nvr:5 - [(((P._p==cs)&&(Q._p==cs)))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(((((int)((P0 *)Pptr(f_pid(0)))->_p)==8)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))))
			continue;
		/* merge: assert(!(((P._p==cs)&&(Q._p==cs))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !(((((int)((P0 *)Pptr(f_pid(0)))->_p)==8)&&(((int)((P1 *)Pptr(f_pid(1)))->_p)==8))), " !(((P._p==cs)&&(Q._p==cs)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - algoritmo1_mutual_exclusion.pml.nvr:10 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Q */
	case 5: // STATE 1 - algoritmo1_mutual_exclusion.pml:45 - [printf('%d is thinking\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		Printf("%d is thinking\n", ((int)((P1 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - algoritmo1_mutual_exclusion.pml:16 - [((onTable[_pid]!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.onTable[ Index(((int)((P1 *)_this)->_pid), 2) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - algoritmo1_mutual_exclusion.pml:17 - [onTable[_pid] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((int)((P1 *)_this)->_pid), 2) ]);
		now.onTable[ Index(((P1 *)_this)->_pid, 2) ] = 0;
#ifdef VAR_RANGES
		logval("onTable[_pid]", ((int)now.onTable[ Index(((int)((P1 *)_this)->_pid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 5 - algoritmo1_mutual_exclusion.pml:16 - [((onTable[((_pid+1)%2)]!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((int)now.onTable[ Index(((((int)((P1 *)_this)->_pid)+1)%2), 2) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 6 - algoritmo1_mutual_exclusion.pml:17 - [onTable[((_pid+1)%2)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((((int)((P1 *)_this)->_pid)+1)%2), 2) ]);
		now.onTable[ Index(((((P1 *)_this)->_pid+1)%2), 2) ] = 0;
#ifdef VAR_RANGES
		logval("onTable[((_pid+1)%2)]", ((int)now.onTable[ Index(((((int)((P1 *)_this)->_pid)+1)%2), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - algoritmo1_mutual_exclusion.pml:49 - [printf('%d is eating\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		Printf("%d is eating\n", ((int)((P1 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - algoritmo1_mutual_exclusion.pml:25 - [onTable[((_pid+1)%2)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((((int)((P1 *)_this)->_pid)+1)%2), 2) ]);
		now.onTable[ Index(((((P1 *)_this)->_pid+1)%2), 2) ] = 1;
#ifdef VAR_RANGES
		logval("onTable[((_pid+1)%2)]", ((int)now.onTable[ Index(((((int)((P1 *)_this)->_pid)+1)%2), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 11 - algoritmo1_mutual_exclusion.pml:25 - [onTable[_pid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((int)((P1 *)_this)->_pid), 2) ]);
		now.onTable[ Index(((P1 *)_this)->_pid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("onTable[_pid]", ((int)now.onTable[ Index(((int)((P1 *)_this)->_pid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 16 - algoritmo1_mutual_exclusion.pml:54 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC P */
	case 14: // STATE 1 - algoritmo1_mutual_exclusion.pml:31 - [printf('%d is thinking\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("%d is thinking\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 2 - algoritmo1_mutual_exclusion.pml:16 - [((onTable[_pid]!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)now.onTable[ Index(((int)((P0 *)_this)->_pid), 2) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 3 - algoritmo1_mutual_exclusion.pml:17 - [onTable[_pid] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((int)((P0 *)_this)->_pid), 2) ]);
		now.onTable[ Index(((P0 *)_this)->_pid, 2) ] = 0;
#ifdef VAR_RANGES
		logval("onTable[_pid]", ((int)now.onTable[ Index(((int)((P0 *)_this)->_pid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 5 - algoritmo1_mutual_exclusion.pml:16 - [((onTable[((_pid+1)%2)]!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)now.onTable[ Index(((((int)((P0 *)_this)->_pid)+1)%2), 2) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 6 - algoritmo1_mutual_exclusion.pml:17 - [onTable[((_pid+1)%2)] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((((int)((P0 *)_this)->_pid)+1)%2), 2) ]);
		now.onTable[ Index(((((P0 *)_this)->_pid+1)%2), 2) ] = 0;
#ifdef VAR_RANGES
		logval("onTable[((_pid+1)%2)]", ((int)now.onTable[ Index(((((int)((P0 *)_this)->_pid)+1)%2), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 8 - algoritmo1_mutual_exclusion.pml:35 - [printf('%d is eating\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("%d is eating\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 9 - algoritmo1_mutual_exclusion.pml:25 - [onTable[((_pid+1)%2)] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((((int)((P0 *)_this)->_pid)+1)%2), 2) ]);
		now.onTable[ Index(((((P0 *)_this)->_pid+1)%2), 2) ] = 1;
#ifdef VAR_RANGES
		logval("onTable[((_pid+1)%2)]", ((int)now.onTable[ Index(((((int)((P0 *)_this)->_pid)+1)%2), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 11 - algoritmo1_mutual_exclusion.pml:25 - [onTable[_pid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((int)now.onTable[ Index(((int)((P0 *)_this)->_pid), 2) ]);
		now.onTable[ Index(((P0 *)_this)->_pid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("onTable[_pid]", ((int)now.onTable[ Index(((int)((P0 *)_this)->_pid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 16 - algoritmo1_mutual_exclusion.pml:40 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

