require 'pry'

class String

  def sentence?
    # binding.pry
    self[-1] == '.' ? true : false
    # return true if self[-1] == '.'
    # false
  end

  def question?
    self[-1] == '?' ? true : false
    # return true if self[-1] == '?'
    # false
  end

  def exclamation?
    # return true if self[-1] == '!'
    # false
    self[-1] == '!' ? true : false

  end

  def count_sentences

    self.split(Regexp.union('.','?','!')).count{|x| x.length != 0}
    # self.split.select{|string| string.sentence? or string.question? or string.exclamation?}.length

    # def count_sentences
    #   array = []
    #   self.split(Regexp.union('.','?','!')).each do |sentence|
    #     if sentence.length != 0
    #       array << sentence
    #     end
    #   end
    #   array.length
    # end

  end
end