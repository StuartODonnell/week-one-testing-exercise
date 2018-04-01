def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  breeds_array = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
    breeds_array << pet
    end
  end
  return breeds_array
end

  #here i'm trying to iterate through
  #the array pets[breed] and if a given
  #value is present then return the instance to a blank srray

#here i'm looping over the pets array in order to assess whether a given
#value (pets name) is present

def find_pet_by_name(pet_shop, name)

  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name (pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
    pet_shop[:pets].delete(pet)
    end
  end
  return pet
end
 #for each "tour through as pet" through the pet[name] breeds_array
 #if the name being passed through by the test is equal
 #to the name in the pets[:names] then within the pet_shop//pets array delete that "tour"

def add_pet_to_stock (pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count (customers)
  customers[:pets].count
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
end

def customer_can_afford_pet(customers, new_pet)
#here i need to call the customer's cash and cost of pet
#and compare the two values with >=
for customer in customers
  if customers[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end
end
