class StaticPagesController < ApplicationController
  def home
  end

  def offers
  end

  def aboutUs
  end

  def photos
    @littering_im_waldkurs = Dir.glob("app/assets/images/gallery/littering_im_waldkurs/*tb*")
    @kompostkurs_kindergarten = Dir.glob("app/assets/images/gallery/kompostkurs_kindergarten/*tb*")
    @werken_mit_abfall = Dir.glob("app/assets/images/gallery/werken_mit_abfall/*tb*")
    @anti_littering = Dir.glob("app/assets/images/gallery/anti_littering/*tb*")
    @sek = Dir.glob("app/assets/images/gallery/anti_littering/sek/*tb*")
    @sek_bi = Dir.glob("app/assets/images/gallery/anti_littering/sek_bi/*tb*")
    @jug_therwil = Dir.glob("app/assets/images/gallery/anti_littering/jug_therwil/*tb*")  
    @abfallwettspiele = Dir.glob("app/assets/images/gallery/abfallwettspiele/*tb*")
    @kompostmobil = Dir.glob("app/assets/images/gallery/kompostmobil/*tb*")

    
  end

  def videos
  end

  def kunden
  end
  
  def kurs_effizienz
  end

  def medienberichte
  end
  
end
