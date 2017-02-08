require 'tty'


prompt = TTY::Prompt.new
# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
# To print tabular output use TTY::Table:

num = prompt.ask('Enter a number?')
puts num


prompt.yes?('Ready to quit?')
