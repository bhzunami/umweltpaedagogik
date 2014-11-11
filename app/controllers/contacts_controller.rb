class ContactsController < ApplicationController

	def new
		@contact = Contact.new
		@contact.course = []
		@contact.course << "Kompostieren, die Tierwelt im Kompost / 2 Std."
		@contact.course <<  "Recycling und Kompostieren / 2 Std."
		@contact.course << "Kompostmobil / 2‒3 Std."
		@contact.course << "Umwelttheater Figurenspiel 1: Kompostieren + Littering / 2 Std."
		@contact.course << "Schulgarten-Projekt"
		@contact.course << "Recycling, Kompostieren + erneuerbare Energie durch Biomassenvergärung (Biopower Pratteln) / 3 Std."
		@contact.course << "Littering in der Gemeinde + Naturkreisläufe im Wald / 3,5 Std."
		@contact.course << "Erzähltheater: Fee Wunderfitz + Littering  / 2Std."
		@contact.course << "Abfallvermeidung in der Kehrichtverbrennung Basel / 3 Std."
		@contact.course << "Tipps und Hintergründe zum täglichen Abfallvermeiden / 2Std."
		@contact.course << "Figurenspiel 2:Littering Recycling / 2‒3Std."
		@contact.course << "Abfallvermeidung, Recycling, Basteln mit Abfall / 2 Std."
		@contact.course << "Recycling, Abfallvermeidung, Werken mit Abfall / 3 Std."
		@contact.course << "Glas Recycling + Ressourcenschonung / 2 Std."
		@contact.course << "Papier Herstellung + Recycling ‒ neue Seiten / 2 Std."
		@contact.course << "Littering, Recycling Besuch auf dem Werkhof / 3 Std."
		@contact.course << "Littering ums Schulhaus und in der Gemeinde / 2 Std."
		@contact.course << "Anti-Littering-Einsatz in der Gemeinde / 4 Std."
		@contact.course << "Abfall im Wasser / 2‒3 Std."
		@contact.course << "Bachputzede / 4 Std."
		@contact.course << "Trinkwasseraufbereitung in der Langen Erlen, Basel / 3,5 Std."
		@contact.course << "Abfallwettspiele / 4 Std."
		@contact.course << "Energieeffizienz Einführungskurs / 2 Std."
		@contact.course << "Projekttag oder Projektwochen"
		@contact.course << "Umwelteinsätze - Pflege Naturschutzgebiet"
		@contact.course << "Eltern- oder Eltern-Kind-Kurse"
		@contact.course << "LehrerInnenweiterbildung"
		@contact.course << "Anti-Littering Workshop auf dem Werkhof – Oberstufe/ 3 Std."
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
