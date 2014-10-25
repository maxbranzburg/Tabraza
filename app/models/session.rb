class Session < ActiveRecord::Base

	belongs_to :course

	def self.get_coursera_sessions
		session_json = RestClient.get('https://api.coursera.org/api/catalog.v1/sessions?fields=id,name,courseId,homeLink,active,durationString,startDay,startMonth,startYear,signatureTrackCloseTime,signatureTrackOpenTime,signatureTrackPrice')
		session_hash = JSON.parse(session_json)
		sessions = session_hash['elements']
		sessions.each do |session|
			Session.create(
				platform_course_id:session['courseId'],
				url:session['homeLink'],
				active:session['active'],
				duration:session['durationString'],
				startDay:session['startDay'],
				startMonth:session['startMonth'],
				startYear:session['startYear'],
				session_name:session['name'],
				openDate:session['signatureTrackOpenTime'],
				closeDate:session['signatureTrackCloseTime'],
				price:session['signatureTrackPrice']
				)
		end
	end

	def self.get_coursera_course_id
		sessions = Session.all
		sessions.each do |session|
			course = Course.find_by(platform_course_id: session.platform_course_id)
			# some sessions are not associated with active courses 
			session.course_id = course.id unless course.nil?
			session.save
		end
	end

end