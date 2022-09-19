require 'decisiontree'

attributes = ['Temp']
training = [
  [98.6, 'healthy'],
  [99.0, 'healthy'],
  [99.5, 'sick'],
  [100.0, 'sick'],
  [100.5, 'sick'],
  [101.0, 'crazy sick'],
  [101.5, 'crazy sick'],
  [102.0, 'crazy sick'],
  [102.5, 'dead']
]

dec_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
dec_tree.train

test = [103.0, 'healthy']

decision = dec_tree.predict(test)
puts "Predicted: #{decision}"
puts "Reality: #{test.last}"
