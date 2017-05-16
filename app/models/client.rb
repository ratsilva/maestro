class Client < ApplicationRecord

	def self.search(search)
	    if search
	      where(["UPPER(company_name) LIKE UPPER(?) OR UPPER(email) LIKE UPPER(?)","%#{search}%", "%#{search}%"])
	    else
	      all
	    end
  end

end
