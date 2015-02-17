require_relative "testing_library"

celebs = ["Britney", "Miley", "Madonna", "Cher", "Bruno", "Michael"]

def how_many_celebrities(celebs)
celebs.count
end


def name_lengths(celebs)
celebs.map {|celebrity| celebrity.length}
end


def reverse_celebrity_names(celebs)
celebs.map {|celebrity| celebrity.reverse}
end


def first_three_celebrities_with_each(celebs)
  celebs.each {|celeb| puts celeb}.first(3)
end


def first_three_celebrities_without_each(celebs)
celebs[0..2]
end


def reverse_case_celebrities_names(celebs)
  celebs.map {|celebrity| celebrity.swapcase}
end


def sum_of_all_celebrity_name_lengths(celebs)
  y = celebs.map {|celebrity| celebrity.length}
  y.inject {|sum,x| sum + x }
end


def celebrities_with_long_names(celebs)
  celebs.map {|x|
    if x.length >= 6
      true
      else
      false
    end}
end


check("how_many_celebrities", how_many_celebrities(celebs) == 6)
check("name_lengths", name_lengths(celebs) == [7, 5, 7, 4, 5, 7])
check("reverse_celebrity_names", reverse_celebrity_names(celebs) == ["yentirB", "yeliM", "annodaM", "rehC", "onurB", "leahciM"])
check("first_three_celebrities_with_each", first_three_celebrities_with_each(celebs) == ["Britney", "Miley", "Madonna"])
check("first_three_celebrities_without_each", first_three_celebrities_without_each(celebs) == ["Britney", "Miley", "Madonna"])
check("reverse_case_celebrities_names", reverse_case_celebrities_names(celebs) == ["bRITNEY", "mILEY", "mADONNA", "cHER", "bRUNO", "mICHAEL"])
check("sum_of_all_celebrity_name_lengths", sum_of_all_celebrity_name_lengths(celebs) == 35)
check("celebrities_with_long_names", celebrities_with_long_names(celebs) == [true, false, true, false, false, true])
