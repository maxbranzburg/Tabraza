class Course < ActiveRecord::Base

	belongs_to :providor
	has_many :sessions
	has_many :categorizations
	has_many :categories, :through => :categorizations
	has_many :catalogues
	has_many :curriculums, :through => :catalogues


	def self.get_coursera_courses
		course_json = RestClient.get('https://api.coursera.org/api/catalog.v1/courses?fields=name,id,language,instructor,aboutTheCourse,photo,video,estimatedClassWorkload')
		course_hash = JSON.parse(course_json)
		courses = course_hash['elements']
		courses.each do |course|
			Course.create(
				platform_course_id:course['id'], 
				platform:"Coursera", 
				name:course['name'], 
				description:course['aboutTheCourse'], 
				instructor:course['instructor'], 
				language:course['language'], 
				photo:course['photo'], 
				video:course['video']
				)		
		end
	end

	def self.get_coursera_providor_id
		providorship_json = RestClient.get('https://api.coursera.org/api/catalog.v1/courses?includes=universities')
		providorship_hash = JSON.parse(providorship_json)
		providorships = providorship_hash['elements']
		providorships.each do |providorship|
			platform_providor_id = providorship['links']['universities'].first
			providor = Providor.find_by(platform_providor_id: platform_providor_id)
			providor_id = providor.id unless providor.nil?
			course = Course.find_by(platform_course_id: providorship['id'])
			course.providor_id = providor_id unless providor_id.nil? || course.nil?
			course.save unless course.nil?
		end
	end

	# def self.get_random_course
	# 	if Course.offset(rand(Course.count)).first != nil
	# 		Course.offset(rand(Course.count)).first
	# 	else
	# 		get_random_course
	# 	end	
	# end

	# def self.get_random_english_course
	# 	return_course = 'x'
	# 	while return_course == 'x'
	# 		random_course = Course.offset(rand(Course.count)).first unless Course.offset(rand(Course.count)).nil?
	# 		if random_course.language == 'en'
	# 			return_course = random_course
	# 		end
	# 	end
	# 	return_course
	# end

end