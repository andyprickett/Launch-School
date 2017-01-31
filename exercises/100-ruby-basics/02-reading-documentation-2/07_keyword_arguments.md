5.step(to: 10, by: 3) { |value| puts value }

Our stepping starts at 5, and will stop when the value passed to the block is
greater than the 'to: 10' argument. Each step will increment 'by: 3'.

5
8
