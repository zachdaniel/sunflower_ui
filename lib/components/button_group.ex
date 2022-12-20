defmodule SunflowerUI.ButtonGroup do
  use SunflowerUI.Component

  # TODO: should these have `flex` on them?

  attr :class, :any, default: ""

  slot :member, required: true do
    attr :active, :boolean
  end

  def horizontal(assigns) do
    ~H"""
    <div class={classes(["flex flex-row", @class])}>
      <%= for member <- mark_first_and_last(@member) do %>
        <%= render_slot(member,
          "border-primary bg-primary text-primary-content focus-visible:outline-[2px_solid]":
            member[:active],
          "border-tl-0 border-tr-0 border-bl-0 border-br-0": !member[:first?] && !member[:last?],
          "-ml-px -mt-0 button-rounded-tl border-tr-0 button-rounded-bl border-br-0":
            member[:first?] && !member[:last?],
          "border-tr-0 button-rounded-tr rounded-bl-0 button-rounded-br":
            member[:last?] && !member[:first?]
        ) %>
      <% end %>
    </div>
    """
  end

  attr :class, :any, default: ""

  slot :member, required: true do
    attr :active, :boolean
  end

  def vertical(assigns) do
    ~H"""
    <div class={classes(["flex flex-col", @class])}>
      <%= for member <- mark_first_and_last(@member) do %>
        <%= render_slot(member,
          "border-primary bg-primary text-primary-content focus-visible:outline-[2px_solid]":
            member[:active],
          "border-bl-0 border-br-0 button-rounded-tl button-rounded-tr":
            member[:first?] && !member[:last?],
          "border-tl-0 border-tr-0 button-rounded-bl button-rounded-bl":
            !member[:first?] && member[:last?]
        ) %>
      <% end %>
    </div>
    """
  end

  defp mark_first_and_last([slot]), do: [Map.merge(slot, %{first?: true, last?: true})]
  defp mark_first_and_last([]), do: []

  defp mark_first_and_last(slots) do
    do_mark_first_and_last(slots, true)
  end

  defp do_mark_first_and_last([last], _), do: [Map.merge(last, %{first?: false, last?: true})]

  defp do_mark_first_and_last([first | rest], first?) do
    [Map.merge(first, %{first?: first?, last?: false}) | do_mark_first_and_last(rest, false)]
  end
end
