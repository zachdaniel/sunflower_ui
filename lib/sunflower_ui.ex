defmodule SunflowerUI do
  @moduledoc """
  Pros:

  All server-side, very simple patterns. Simple replacement of strings with other strings

  Cons:

  Can't currently infer theme on page load using prefers media queries, but that is coming (and is supported by chrome):
  https://web.dev/user-preference-media-features-headers/
  Can't have users upload themes currently either. We can support runtime themes before.

  Use this default theme for tails:

  # TODO add this
  """

  @variants ~w(primary secondary accent info success warning error glass ghost)a

  def variants, do: @variants
end
