defmodule TwitterLikeWeb.PostLive.PostComponent do
  use TwitterLikeWeb, :live_component

  def render(assigns) do
    a = 
    ~H"""
    <div id={"post-#{@post.id}"} class="post">
      <div class="row">
        <div class="column column-10">
          <div class="post-avatar"></div>
        </div>
        <div class="column column-90 post-body">
          <b>@<%= @post.username %></b>
          <br/>
          <%= @post.body %>
        </div>
      </div>
      <div class="row">
        <div class="column post-button-column">
          <a href="#" phx-click="like" phx-target={"#{@myself}"}>
            <%= TwitterLikeWeb.Utils.IconUtils.render("fa-heart.svg", [class: "some_class icon", width: "24", height: "24"]) %>
            <i class="far fa-heart"></i> <%= @post.likes_count %>
          </a>
        </div>
        <div class="column post-button-column">
        <a href="#" phx-click="repost" phx-target={"#{@myself}"}>
          <%= TwitterLikeWeb.Utils.IconUtils.icon_tag(@socket, "hand-peace", class: "some_class") %>
          <i class="far fa-hand-peace"></i> <%= @post.reposts_count %>
        </a>
        </div>
        <div class="column post-button-column">
          <%= live_patch to: Routes.post_index_path(@socket, :edit, @post.id) do %>
            <%= TwitterLikeWeb.Utils.IconUtils.icon_tag(@socket, "edit", class: "some_class") %>
            <i class="far fa-edit"></i>
          <% end %>
          <%= link to: "#", phx_click: "delete", phx_value_id: @post.id do %>
          <%= TwitterLikeWeb.Utils.IconUtils.icon_tag(@socket, "trash", class: "some_class") %>
            <i class="far fa-trash-alt"></i>
          <% end %>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("like", _, socket) do
    TwitterLike.Timeline.inc_likes(socket.assigns.post)
    {:noreply, socket}
  end

  def handle_event("repost", _, socket) do
    TwitterLike.Timeline.inc_reposts(socket.assigns.post)
    {:noreply, socket}
  end
end