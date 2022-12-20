defmodule SunflowerUI.Component do
  defmacro __using__(_) do
    quote do
      use Phoenix.Component
      @tails Application.compile_env(:sunflower_ui, :tails) || Tails
      import SunflowerUI.Component, only: [classes: 1]
    end
  end

  defmacro classes(classes) do
    tails = Module.get_attribute(__CALLER__.module, :tails)

    quote do
      unquote(tails).classes(unquote(classes))
    end
  end
end
