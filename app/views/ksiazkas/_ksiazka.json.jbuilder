json.extract! ksiazka, :id, :tytul, :autor, :ilosc, :created_at, :updated_at
json.url ksiazka_url(ksiazka, format: :json)