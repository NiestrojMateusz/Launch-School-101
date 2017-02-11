def transpose(matrix)
  
  
  matrix[0].zip(matrix[1..-1].each {|sub| return sub})
  
end 

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


new_matrix =  transpose(matrix)