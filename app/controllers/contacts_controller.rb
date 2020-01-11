# coding: utf-8
class ContactsController < ApplicationController

	def new
		@contact = Contact.new
		@contact.course = []
		@contact.course << "Kompostieren, die Tierwelt im Kompost / 2 Lektionen"
		@contact.course << "Recycling und Kompostieren / 2 Lektionen"
		@contact.course << "Kompostmobil / 2‒4 Lektionen"
		@contact.course << "Umwelttheater Figurenspiel 1: Kompostieren + Littering / 2 Lektionen"
        @contact.course << "Figurenspiel Madame Poubelle, Recycling + vermeiden / 2 Lektionen"
		@contact.course << "Schulgarten-Projekt"
		@contact.course << "Recycling, Kompostieren + erneuerbare Energie durch Biomassenvergärung / 3,5 Std."
		@contact.course << "Littering in der Gemeinde + Naturkreisläufe im Wald / 3,5 Std."
		@contact.course << "Abfallvermeidung in der Kehrichtverbrennung Basel / 3 Std."
        @contact.course << "Abfall im Schulalltag"
		@contact.course << "Tipps und Hintergründe zum täglichen Abfallvermeiden / 2 Lektionen."
        @contact.course << "Elektroschrott vermeiden und Recycling 2 Lektionen"
		@contact.course << "Abfallvermeidung, Recycling und Basteln mit Abfall / 2 Lektionen"
		@contact.course << "Littering, Recycling auf Werkhof / 3 Std."
		@contact.course << "Littering ums Schulhaus und in der Gemeinde / 2 Lektionen"
		@contact.course << "Anti-Littering-Einsatz in der Gemeinde / 4 Std."
		@contact.course << "Anti-Littering Wanderung / 4 Std."
		@contact.course << "Figurenspiel 3: Das sprechende Sandwitch / 2 Lektionen"
		@contact.course << "Foodwaste / 2 Lektionen"
		@contact.course << "Abfall im Wasser / 2‒4 Lektionen."
		@contact.course << "Bachputzede / 4 Std."
		@contact.course << "Ein Morgen rund um das Thema Wasser"
		@contact.course << "Energieeffizienz Einführungskurs / 2 Lektionen"
		@contact.course << "Umwelteinsätze in der Gemeinde / 4-6 Std."
        @contact.course << "Projekttag oder Projektwochen"
	end

	def create
		@contact = Contact.new(params[:contact])
		@contact.request =request

		if @contact.deliver
			flash[:notice] = "Vielen Dank für die Anmeldung"
			redirect_to offers_path
		else
			flash.now[:error] = "Leider können zur Zeit keine Anmeldungen vorgenommen werden."
			render new
		end
	end
end
