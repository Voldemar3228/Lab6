include Math

def integral(accurancy)
  return nil unless accurancy.class == Float
  return nil unless accurancy > 0

  func = ->(x) { x * sin(x**2) }
  stop = 1
  start = 0
  count = 0
  correct_answer = 0.5 * (1.0 - cos(1.0))
  correct_answer.freeze
  n = 1
  answer = 0
  func_area_segment = Enumerator.new do |seg|
    step = (stop - start).to_f / n
    x = start + step
    n.times do
      seg << step * func.call(x - step.to_f / 2)
      x += step
      count += 1
    end
  end

  while (correct_answer - answer).abs > accurancy
    answer = 0
    n *= 2
    func_area_segment.each do |area_segment|
      answer += area_segment
    end
  end
  print 'Answer is :', answer, "\n"
  print 'Num is :', count, "\n"
end
