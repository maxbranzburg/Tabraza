class CreateProvidors < ActiveRecord::Migration
  def change
    create_table :providors do |t|
      t.integer :platform_providor_id
      t.text :name
      t.text :shortName
      t.text :banner
      t.text :homeLink
      t.text :location
      t.text :locationCity
      t.text :locationState
      t.text :locationCountry
      t.text :classLogo
      t.text :logo
      t.text :squareLogo
      t.text :landingPageBanner

      t.timestamps
    end
  end
end
