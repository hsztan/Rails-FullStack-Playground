require 'yaml'

config = YAML.load_file('config.yml')
p config.inspect

p config.dig('production', 'aws_key')

# user = {
#   name: 'Kristine',
#   favorites: {
#     food: 'Pizza',
#     color: 'Blue',
#     movies: ['The Notebook', 'The Notebook 2', 'The Notebook 3']
#   }
# }

# p user.dig(:favorites, :movies, 1)

# hello
