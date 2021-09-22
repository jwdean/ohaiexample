Ohai.plugin(:DigiNeo) do
  provides 'digineo'

  def digineo_installed?
    # this could be real code to determine if a digineo appears in device manager.
    false
  end

  collect_data(:windows) do
    digineo Mash.new
    # This creates the attribute tree digineo > installed
    digineo[:installed] = digineo_installed?
  end
end
