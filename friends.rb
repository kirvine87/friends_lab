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
