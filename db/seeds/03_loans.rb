customers = Customer.all
products = Product.all

customers.map do |customer|
    (5..25).to_a.sample.times do |i|
        days_ago = (1..364).to_a.sample
        loan = customer.loans.new(created_at: Date.today - days_ago.days, updated_at: Date.today - days_ago.days)

        (3..7).to_a.sample.times do |num|
            product = products.sample
            
            loan.loan_products.new(product: product, product_quantity: (1..15).to_a.sample)
        end

        if loan.save
            puts "se ha creado un préstamo para: #{customer.name} de: #{loan.total_loan}"
        end
    end
end
