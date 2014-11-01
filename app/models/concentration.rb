class Concentration < ActiveRecord::Base

	has_many :curriculums
	has_many :courses, :through => :curriculums

	def self.create_latam_concentration
		Concentration.create(
			name: "Latin America",
			skill_level: "Intermediate",
			estimated_months: 3
			)
	end

	def self.create_energy_concentration
		Concentration.create(
			name: "Energy",
			skill_level: "Advanced",
			estimated_months: 6
			)
	end

	def self.create_music_concentration
		Concentration.create(
			name: "Music",
			skill_level: "Beginner",
			estimated_months: 2
			)
	end

	def self.create_introprogramming_concentration
		Concentration.create(
			name: "Introduction to Programming",
			skill_level: "Intermediate",
			estimated_months: 3
			)
	end

end
