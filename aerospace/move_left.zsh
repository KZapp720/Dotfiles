if aerospace focus left --boundaries-action fail && aerospace focus right --boundaries-action fail; then
	aerospace join-with left && aerospace move up && while aerospace move down --boundaries-action fail; do true; done || aerospace move left --boundaries-action stop
else
	if aerospace focus up --boundaries-action fail; then
		aerospace focus down
		aerospace move left
	elif aerospace focus down --boundaries-action fail; then
		aerospace focus up
		aerospace move left
	fi
fi

aerospace move-mouse window-force-center
