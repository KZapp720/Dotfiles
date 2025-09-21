if aerospace focus right --boundaries-action fail && aerospace focus left --boundaries-action fail; then
	aerospace join-with right && aerospace move down && while aerospace move down --boundaries-action fail; do true; done || aerospace move right --boundaries-action stop
else
	if aerospace focus up --boundaries-action fail; then
		aerospace focus down --boundaries-action fail
		aerospace move right
	elif aerospace focus down --boundaries-action fail; then
		aerospace focus up --boundaries-action fail
		aerospace move right
	fi
fi

aerospace move-mouse window-force-center
