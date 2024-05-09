// Step Event of obj_timer object
   if (timer_active) {
       timer_current_seconds -= delta_time/1000000; // Decrement the timer by 1 second
       if (timer_current_seconds <= 0) {
           // Timer has reached 0, add code to handle timer completion
           timer_active = false; // Deactivate the timer
		   room_goto(RM_GAMEOVER);
       }
	   
	   if (objSystem.puntaje == 4) {
           // Timer has reached 0, add code to handle timer completion
           scrOpenTexbox("Los encontraste a todos, habla con Miguel RRua");
		   timer_active = false; // Deactivate the timer
       }
   }