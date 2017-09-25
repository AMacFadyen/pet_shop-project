def pet_shop_name(shop_name)
    return shop_name[:name]
end

def total_cash(shop_name)
    return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, amount_to_add)
    return shop_name[:admin][:total_cash] += amount_to_add
end

def pets_sold(shop_name)
    return shop_name[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, num_sold)
    return shop_name[:admin][:pets_sold] += num_sold
end

def stock_count(shop_name)
    return shop_name[:pets].length()
end

def pets_by_breed(shop_name, breed_type)
    amount_of_breed_type = []
    for pet in shop_name[:pets]
        if pet[:breed] == breed_type
            amount_of_breed_type.push(breed_type)
        end
    end
    return amount_of_breed_type
end

def find_pet_by_name(shop_name, req_pet_name)
    for pet in shop_name[:pets]
        if pet[:name] == req_pet_name
            return pet
        end
    end
    return nil
end

def remove_pet_by_name(shop_name, sold_pet)
    shop_name[:pets].delete_if { |pet| pet[:name] == sold_pet }
end

def add_pet_to_stock(shop_name, new_pet)
    shop_name[:pets].push(new_pet)
end

def customer_pet_count(customer)
    customer[:pets].length()
end

def add_pet_to_customer(reciever, pet_to_add)
    reciever[:pets] << pet_to_add
    return reciever[:pets].length()
end

def customer_can_afford_pet(customer_id, pet_to_buy)
    if pet_to_buy[:price] > customer_id[:cash]
        return false
    else
        return true
    end
end

def sell_pet_to_customer(shop_name, pet_to_add, reciever)
    for pet in shop_name[:pets]
        if pet_to_add /= shop_name[:pets][:name]
            reciever[:pets] << pet_to_add
            shop_name[:admin][:pets_sold] += 1
            shop_name[:admin][:total_cash] += pet_to_add[:price]
        else
            return nil
        end
    end
end
