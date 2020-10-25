# frozen_string_literal: true

# unfinished
def is_valid(s)
  @open_p = false
  @open_b = false
  @open_r = false

  s = s.split('')
  prev = ''
  @pcount = nil
  @bcount = nil
  @rcount = nil
  prevp = ''
  prevb = ''
  prevr = ''
  s.each_with_index do |char, index|
    p char
    p index
    case char
    when '('
      @pcount = index
      @bcount += 1 if @bcount
      @rcount += 1 if @rcount
      @open_p = true
      prevp = '('
    when ')'
      @open_p = prevp != '('
      return false if @pcount && ((s[@pcount]) != '(')
    when '{'
      @bcount = index
      @pcount += 1 if @pcount
      @rcount += 1 if @rcount
      @open_b = true
      prevb = '{'
    when '}'
      @open_b = prevb != '{'
      return false if @bcount && (s[@bcount] != '{')
    when '['
      @rcount = index
      @pcount += 1 if @pcount
      @bcount += 1 if @bcount
      @open_r = true
      prevr = '['
    when ']'
      @open_r = prevr != '['
      return false if @rcount && (s[@rcount] != '[')
    end

    p @open_p
    p @open_b
    p @open_r
  end
  !(@open_p || @open_b || @open_r)
end
