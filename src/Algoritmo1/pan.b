	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM never_0 */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Q */
;
		;
		;
		;
		
	case 7: // STATE 3
		;
		now.onTable[ Index(((P1 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 9: // STATE 6
		;
		now.onTable[ Index(((((P1 *)_this)->_pid+1)%2), 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 9
		;
		now.onTable[ Index(((((P1 *)_this)->_pid+1)%2), 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 11
		;
		now.onTable[ Index(((P1 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC P */
;
		;
		;
		;
		
	case 16: // STATE 3
		;
		now.onTable[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 18: // STATE 6
		;
		now.onTable[ Index(((((P0 *)_this)->_pid+1)%2), 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 20: // STATE 9
		;
		now.onTable[ Index(((((P0 *)_this)->_pid+1)%2), 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 11
		;
		now.onTable[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;
	}

