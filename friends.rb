def get_name(person)
  return person[:name]
end

def favourite_tv_show (person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return (person[:favourites][:snacks]).include?(food)
end

def add_friend(person, friend)
  added_friends = person[:friends].push(friend)
  added_friends.size()
end

def remove_friend(person, friend)
  remove_friends = person[:friends]
  remove_friends.delete(friend.capitalize())
  remove_friends.size()
end

def total_monies(peoples)
  total = 0
  for people in peoples
    total += people[:monies]
  end
  return total
end

def lend_monies (lender, lendee, amount)
  if amount > lender[:monies]
    return "Not enough monies."
  else
    lenders = lender[:monies] - amount
    lendees = lendee[:monies] + amount
    return lendees && lenders
  end

end

def all_fav_food(peoples)
  all_fav_foods = []
  for people in peoples
    snacks =people[:favourites][:snacks]
    for snack in snacks
      all_fav_foods.push(snack)
    end
  end
  return all_fav_foods.size()
end
