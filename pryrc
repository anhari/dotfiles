class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end

  def clipboard(text)
    IO.write("|pbcopy", text)
  end
end