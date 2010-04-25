class CreateOwners < ActiveRecord::Migration
  def self.up
    create_table :owners do |t|
      t.string :title
      t.string :firstname
      t.string :lastname
      t.string :address1
      t.string :address2
      t.string :postcode
      t.string :phone
      t.string :email
      t.timestamps
    end
	
	Owner.create(:title => 'Mrs', :firstname => 'Lewire', :lastname => 'Tess', :address1 => 'WCC', :address2 => 'Devon', :postcode => 'BA1 BB1', :phone => '0208112 558', :email => 'lt@wcc.co.uk')
	Owner.create(:title => 'Mrs', :firstname => 'Andre', :lastname => 'Stewart', :address1 => 'test lane', :address2 => 'Devon', :postcode => 'BA1 BB1', :phone => '0208112 558', :email => 'test@wcc.co.uk')
	Owner.create(:title => 'Mr', :firstname => 'Neale', :lastname => 'Ricotti', :address1 => 'camdam lane', :address2 => 'Cambridge', :postcode => 'CA1 cc1', :phone => '0208112 558', :email => 'neaile@gmail.co.uk')
	Owner.create(:title => 'Mr', :firstname => 'Doug', :lastname => 'Viney', :address1 => 'Queens Road', :address2 => 'Reading', :postcode => 'RA1 RR1', :phone => '0208112 558', :email => 'doug@hotmail.co.uk')

  end
  
  def self.down
    drop_table :owners
  end
end
