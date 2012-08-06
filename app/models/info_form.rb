class InfoForm < ActiveRecord::Base
  attr_accessible :company, :contact, :email, :industry, :other1, :description, :currentsys, :usercount, :location,
                  :preferredsys, :hostingpref, :implement, :budget, :budgetrange, :preferredbudget, :comments
                  
  validates_presence_of :company, :contact
  INDUSTRIES = ['Manufacturing', 'Aerospace', 'Life Sciences', 'Automotive', 'Food and Beverage',
                'Contract Manufacturing', 'Oil/Gas', 'Packaging', 'Services', 'Other']
  CURRENTSYS = ['Paper Based', 'MS Office', 'Commercial Software', 'Homegrown']
  USERCOUNT = ['1-25', '26-50', '51-100', '101-200', '201-500', '500+']
  PREF = ['Web based', 'Network based', 'Client server based(desktop)']
  IMPLEMENT = ['Right now!', 'Within 3 months', '3 to 6 months', 'More than 6 months']
  BUDGET = ['Less than $2,500', '$2,501 to $10,000', '$10,001 to $25,000', 
                '$25,001 to $50,000', '$50,001 to $100,000', '$100,001 +']
  PREFBUDGET = ['Less than $2,500', '$2,501 to $10,000', '$10,001 to $25,000', 
                '$25,001 to $50,000', '$50,001 to $100,000', '$100,001 +']
  
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |info_form|
        csv << info_form.attributes.values_at(*column_names)
      end
    end
  end
end
