require 'tty'


prompt = TTY::Prompt.new
prompt.yes?('Do you like Ruby?')
prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
# =>
# Choose your destiny? (Use arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
# To print tabular output use TTY::Table:

prompt.yes?('Want to see Table?')
table = TTY::Table[['a1', 'a2', 'a3'], ['b1', 'b2', 'b3']]
table.to_s

prompt.yes?('Want to see ProgressBar?')
bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
30.times { bar.advance }

prompt.yes?('Want to see Spinner?')
spinner = TTY::Spinner.new('Loading ... ', format: :spin_2)
30.times { spinner.spin }

prompt.yes?('Ready to quit?')
