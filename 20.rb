# frozen_string_literal: true

def is_valid(s)
  l_par = ['(', '{', '[']
  par = { ')' => '(', '}' => '{', ']' => '[' }
  stack = []
  s.split('').each do |char|
    if l_par.include?(char)
      stack << char
    elsif stack[-1] == par[char]
      stack.pop
    else
      # if we reach here it means that we are trying to close a paranthesis we never opened, so it is not valid
      return false
    end
  end
  stack.empty?
end

# is_valid('()')
# is_valid('()[]{}')
# is_valid('(]')
# is_valid('([)]')
# is_valid('{[]}')
# is_valid(']')
