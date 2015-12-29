# moonphase

Calculates the phase of the Moon. Intended for use with i3blocks.

To set this up, copy the script to (for example) /usr/libexec/i3blocks
Next, chmod 755 /usr/lib/exec/i3blocks/moon_phase

Now add something like the following to your i3blocks config file

[moon]
label=
command=/usr/libexec/i3blocks/moon_phase
interval=600

Finally, restart i3 with $mod+Shift+r

The calculations for this script were taken from Practical Astronomy With Your Calculator or Spreadsheet
by Peter Duffett-Smith and Johathan Zwart, 4th Edition, Cambridge University Press, 2011
