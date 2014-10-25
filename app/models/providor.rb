class Providor < ActiveRecord::Base

	has_many :courses

	def self.get_coursera_providors
		providor_json = RestClient.get('https://api.coursera.org/api/catalog.v1/universities?fields=id,name,shortName,banner,homeLink,location,locationCity,locationState,locationCountry,classLogo,website,logo,squareLogo,landingPageBanner')
		providor_hash = JSON.parse(providor_json)
		providors = providor_hash['elements']
		providors.each do |providor|
			Providor.create(
				platform_providor_id:providor['id'], 
				shortName:providor['shortName'], 
				name:providor['name'], 
				homeLink:providor['website'],
				location:providor['location'],
				locationCity:providor['locationCity'],
				locationState:providor['locationState'],
				locationCountry:providor['locationCountry'],
				classLogo:providor['classLogo'],
				logo:providor['logo'],
				squareLogo:providor['squareLogo'],
				landingPageBanner:providor['landingPageBanner']
				)		
		end
	end

	def self.course_plurality(courses)
		if courses == 1
			course_term = "course"
		else
			course_term = "courses"
		end
	end

end
