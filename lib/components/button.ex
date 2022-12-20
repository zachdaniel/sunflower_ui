defmodule SunflowerUI.Button do
  use SunflowerUI.Component

  attr :type, :atom, default: :base, values: SunflowerUI.variants() ++ [:base, :link]
  attr :class, :any, default: ""
  attr :active, :boolean, default: false
  attr :theme, :atom, default: :default
  attr :outline, :boolean, default: false
  attr :disabled, :boolean, default: false
  attr :wide, :boolean, default: false
  attr :block, :boolean, default: false
  attr :square, :boolean, default: false
  attr :circle, :boolean, default: false
  attr :size, :atom, default: :md, values: [:xs, :sm, :md, :lg]
  attr :rest, :global
  slot :inner_block

  def button(%{type: :primary} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-primary bg-primary text-primary-content",
        "hover:border-primary-focus hover:bg-primary-focus focus-visible:outline-offset-2",
        [
          "border-primary-focus bg-primary-focus": @active,
          "text-primary hover:border-primary-focus hover:bg-primary-focus hover:text-primary-content":
            @outline,
          "border-primary-focus bg-primary-focus text-primary-content": @outline && @active
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :secondary} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-secondary bg-secondary text-secondary-content",
        "hover:border-secondary-focus hover:bg-secondary-focus focus-visible:outline-offset-2",
        [
          "border-secondary-focus bg-secondary-focus": @active,
          "text-secondary hover:border-secondary-focus hover:bg-secondary-focus hover:text-secondary-content":
            @outline,
          "border-secondary-focus bg-secondary-focus text-secondary-content": @active && @outline
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :accent} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-accent bg-accent text-accent-content",
        "hover:border-accent-focus hover:bg-accent-focus focus-visible:outline-offset-2",
        [
          "border-accent-focus bg-accent-focus": @active,
          "text-accent hover:border-accent-focus hover:bg-accent-focus hover:text-accent-content":
            @outline,
          "border-accent-focus bg-accent-focus text-accent-content": @active && @outline
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :info} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-info bg-info text-info-content",
        "hover:border-info-focus hover:bg-info-focus focus-visible:outline-offset-2",
        [
          "border-info-focus bg-info-focus": @active,
          "text-info hover:border-info hover:bg-info hover:text-info-content": @outline,
          "border-info bg-info text-info-content": @active && @outline
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :success} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-success bg-success text-success-content",
        "hover:border-success-focus hover:bg-success-focus focus-visible:outline-offset-2",
        [
          "border-success-focus bg-success-focus": @active,
          "text-success hover:border-success hover:bg-success hover:text-success-content": @outline,
          "border-success bg-success text-success-content": @active && @outline
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :warning} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      active={@active}
      disabled={@disabled}
      class={[
        "border-warning bg-warning text-warning-content",
        "hover:border-warning-focus hover:bg-warning-focus focus-visible:outline-offset-2",
        [
          "border-warning-focus bg-warning-focus": @active,
          "text-warning hover:border-warning hover:bg-warning hover:text-warning-content": @outline,
          "border-warning bg-warning text-warning-content": @outline && @active
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :error} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-error bg-error text-error-content",
        "hover:border-error-focus hover:bg-error-focus focus-visible:outline-offset-2",
        [
          "border-error-focus bg-error-focus": @active,
          "text-error hover:border-error hover:bg-error hover:text-error-content": @outline,
          "border-error bg-error text-error-content": @active && @outline
        ],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :glass} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-glass bg-glass text-glass-content",
        "hover:border-glass-focus hover:bg-glass-focus focus-visible:outline-offset-2",
        ["border-glass-focus bg-glass-focus": @active],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :ghost} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border border-transparent bg-transparent text-current",
        "hover:border-opacity-0 bg-base-content bg-opacity-20 focus-visible:outline-[2px_solid_currentColor]",
        ["border-opacity-0 bg-base-content bg-opacity-20": @active],
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(%{type: :link} = assigns) do
    ~H"""
    <.button
      theme={@theme}
      outline={@outline}
      disabled={@disabled}
      class={[
        "border-transparent bg-transparent text-primary underline focus-visible:outline-[2px_solid_currentColor]",
        @class
      ]}
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </.button>
    """
  end

  def button(assigns) do
    ~H"""
    <button
      class={
        classes([
          "theme:#{@theme}",
          "font-semibold uppercase no-underline button-border animate-[button-pop_0.25s_ease-out] button-text-case border-neutral bg-neutral text-neutral-content no-underline",
          "hover:border-neutral-focus bg-neutral-focus focus-visible:button-focus-visible-outline focus-visible:outline-offset-2",
          [
            "hover:animation-none focus:animate-none focus:animate:button-focus-scale border-neutral-focus bg-neutral-focus":
              @active,
            "border-current bg-transparent text-base-content": @outline,
            "border-opacity-0 bg-neutral bg-opacity-20 text-base-content text-opacity-20": @disabled,
            "h-6 px-2 min-h-6 font-[0.75rem]": @size == :xs,
            "h-8 px-3 min-h-8 font-[0.875rem]": @size == :sm,
            "h-12 px-4 min-h-12 font-[0.875rem]": @size == :md,
            "h-16 px-6 min-h-16 font-[1.125rem]": @size == :lg,
            "p-0": @square,
            "h-6 w-6": @square && @size == :xs,
            "h-8 w-8": @square && @size == :sm,
            "h-12 w-12": @square && @size == :md,
            "h-16 w-16": @square && @size == :lg,
            "rounded-full p-0": @circle,
            "h-6 w-6": @circle && @size == :xs,
            "h-8 w-8": @circle && @size == :sm,
            "h-12 w-12": @circle && @size == :md,
            "h-16 w-16": @circle && @size == :lg,
            "w-64": @wide,
            "w-full": @block
          ],
          @class
        ])
      }
      {@rest}
    >
      <%= render_slot(@inner_block) %>
    </button>
    """
  end
end
