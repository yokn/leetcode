# frozen_string_literal: false

def int_to_roman(num)
  str = ''
  until num.zero?
    if num >= 1000
      num -= 1000
      str << 'M'

      next
    end
    if num >= 900
      num -= 900
      str << 'CM'

      next
    end
    if num >= 500
      num -= 500
      str << 'D'

      next
    end
    if num >= 400
      num -= 400
      str << 'CD'

      next
    end
    if num >= 100
      num -= 100
      str << 'C'

      next
    end
    if num >= 90
      num -= 90
      str << 'XC'

      next
    end
    if num >= 50
      num -= 50
      str << 'L'

      next
    end
    if num >= 40
      num -= 40
      str << 'XL'

      next
    end
    if num >= 10
      num -= 10
      str << 'X'

      next
    end
    if num >= 9
      num -= 9
      str << 'IX'

      next
    end
    if num >= 5
      num -= 5
      str << 'V'

      next
    end
    if num >= 4
      num -= 4
      str << 'IV'

      next
    end
    next unless num >= 1

    num -= 1
    str << 'I'

    next
  end
  str
end

int_to_roman(3)
int_to_roman(4)
int_to_roman(9)
int_to_roman(58)
int_to_roman(1994)
