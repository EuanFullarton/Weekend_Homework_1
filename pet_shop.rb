def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_sold)
  pet_shop[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed)
  breed_list = []
  pets = pet_shop[:pets]
  for pet in pets
    if breed == pet[:breed]
      breed_list.push(pet)
    end
  end
  return breed_list
end

def find_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    return pet if pet_name == pet[:name]
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet_name == pet[:name]
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  customers[:pets].length()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)  
if pet == nil
  return 
end
    if customer_can_afford_pet(customer, pet)
      customer[:pets] << pet
      pet_shop[:admin][:pets_sold] += 1
      pet_shop[:admin][:total_cash] += pet[:price]
    end
end
