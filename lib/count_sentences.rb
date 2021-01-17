require 'pry'

class String

  def sentence?
    return true if self[-1] == '.'
    false
  end

  def question?
    return true if self[-1] == '?'
    false
  end

  def exclamation?
    return true if self[-1] == '!'
    false
  end

  def count_sentences
    self.split(Regexp.union('.','?','!')).count{|x| x.length != 0}
    # self.split.select{|string| string.sentence? or string.question? or string.exclamation?}.length
  end
end