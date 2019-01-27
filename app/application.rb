require 'pry'

class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []
<<<<<<< HEAD

=======
>>>>>>> 93350ef7746949fca87a55d9dd847759d1c62fc8
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    #binding.pry

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    else
      resp.write "Path Not Found"
    end

<<<<<<< HEAD
    if req.path.match(/cart/) && @@cart.empty?
      resp.write "Your cart is empty"
    elsif @@cart.each do |item|
      resp.write "#{item}\n"
    end

    if req.path.match(/add/)
      add_item = req.params["item"]
      if @@items.include? add_item
        binding.pry
        @@cart << add_item
        resp.write "added #{add_item}"
      else
        resp.write "We don't have that item"
      end
    end
    end

    resp.finish
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else
      return "Couldn't find #{search_term}"
=======
    def handle_search(search_term)
      if @@items.include?(search_term)
        return "#{search_term} is one of our items"
      else
        return "Couldn't find #{search_term}"
      end
>>>>>>> 93350ef7746949fca87a55d9dd847759d1c62fc8
    end
  end
end
