include Math

def integral(accurancy)
  return nil unless accurancy.class == Float
  return nil unless accurancy > 0

  func = ->(x) { x * sin(x**2) }
  stop = 1
  start = 0
  correct_answer = 0.5 * (1.0 - cos(1.0))
  correct_answer.freeze
  count = 0
  answer = 0
  n = 1
  while (correct_answer - answer).abs > accurancy
    answer = 0
    n *= 2
    step = (stop - start).to_f / n
    x = start + step
    n.times do
      answer += step * func.call(x - step.to_f / 2)
      count += 1
      x += step
    end
  end
  print 'Answer is :', answer, "\n"
  print 'Num is :', count, "\n"
end
