json.extract! transaction, :id, :proposed_product_id, :proposed_product_quantity, :proposed_by_user_id, :wanted_product_id, :wanted_product_quantity, :accepted_by_user_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
