defmodule SunflowerUI.Dropdown do
  use SunflowerUI.Component

  attr :class, :any, default: ""
  attr :label_class, :any
  # attr :

  def dropdown(assigns) do
    ~H"""

    """
  end
end

# <div class={classes(["group", @class])}>
#   <label tabindex="0" class={classes(["btn m-1"], @label_class)} />
#   <%!-- <ul tabindex="0" class="" --%>

# </div>
# .dropdown .dropdown-content {
#   @apply origin-top scale-95 transform transition duration-200 ease-in-out;
# }
# .dropdown-bottom .dropdown-content {
#   @apply origin-top;
# }
# .dropdown-top .dropdown-content {
#   @apply origin-bottom;
# }
# .dropdown-left .dropdown-content {
#   @apply origin-right;
# }
# .dropdown-right .dropdown-content {
#   @apply origin-left;
# }
# .dropdown.dropdown-open .dropdown-content,
# .dropdown.dropdown-hover:hover .dropdown-content,
# .dropdown:focus .dropdown-content,
# .dropdown:focus-within .dropdown-content {
#   @apply scale-100;
# }
