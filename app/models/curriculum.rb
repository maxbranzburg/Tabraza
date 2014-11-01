class Curriculum < ActiveRecord::Base

	belongs_to :course
	belongs_to :concentration

	def self.create_latam_curriculum
		Curriculum.create(
			concentration_id: 1,
			course_id: 330
			)
		Curriculum.create(
			concentration_id: 1,
			course_id: 479
			)
		Curriculum.create(
			concentration_id: 1,
			course_id: 654
			)
		Curriculum.create(
			concentration_id: 1,
			course_id: 37
			)
	end

	def self.create_energy_curriculum
		Curriculum.create(
			concentration_id: 2,
			course_id: 217
			)
		Curriculum.create(
			concentration_id: 2,
			course_id: 362
			)
		Curriculum.create(
			concentration_id: 2,
			course_id: 375
			)
		Curriculum.create(
			concentration_id: 2,
			course_id: 453
			)
	end

	def self.create_music_curriculum
		Curriculum.create(
			concentration_id: 3,
			course_id: 57
			)
		Curriculum.create(
			concentration_id: 3,
			course_id: 153
			)
		Curriculum.create(
			concentration_id: 3,
			course_id: 94
			)
		Curriculum.create(
			concentration_id: 3,
			course_id: 433
			)
	end

	def self.create_introprogramming_curriculum
		Curriculum.create(
			concentration_id: 4,
			course_id: 807
			)
		Curriculum.create(
			concentration_id: 4,
			course_id: 130
			)
		Curriculum.create(
			concentration_id: 4,
			course_id: 22
			)
		Curriculum.create(
			concentration_id: 4,
			course_id: 692
			)
	end

end
