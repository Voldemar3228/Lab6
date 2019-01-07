def negative?(xxx)
  xxx.abs != xxx
end

def root(func = 0)
  x = 0.1

  if block_given?
    until yield(x).zero? || negative?(yield(x)) != negative?(yield(x + 0.1))
      x -= 0.1
    end
  else
    return nil unless func.class == Proc

    until func.call(x).zero? || negative?(func.call(x)) != negative?(func.call(x + 0.1))
      x -= 0.1
    end
  end
  x
end
