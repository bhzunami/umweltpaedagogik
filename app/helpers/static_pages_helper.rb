module StaticPagesHelper

	def get_original(image, category)
		get_image_path(image, category).gsub!(/_([a-z]+).jpg/, '_og.jpg')
	end

	def get_image_path(image, category)
		"gallery/#{category}/#{image.split('/').last}"
	end
end
