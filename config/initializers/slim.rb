# создаем свой rendering engine
class AmpScssEngine < Slim::Embedded::SassEngine
  def on_slim_embedded(engine, body, attrs)
    super(:scss, body, attrs)
  end
end

# регистрируем его в slim 
Slim::Embedded.register :amp_scss, AmpScssEngine