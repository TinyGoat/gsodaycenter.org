<%= content_for :title do %>
  Partners
<% end %>
<%= content_for :synopsis do %>
  The IRC works with community partners to make a "one stop shop" for people needing services.
<% end %>

<div class="cards">
  <div class="card">
    <%=image_tag('partners/gtcc_360.png') %>
    <div class="caption">
      <h3><%= link_to 'GTCC', "http://home.gtcc.edu" %></h3>
      <p>Offers onsite classes free of charge</p>
    </div>
  </div>
  <div class="card">
    <%=image_tag('partners/tapm-logo.png') %>
    <div class="caption">
      <h3><%= link_to 'TAPM', "http://www.tapmedicine.com/" %></h3>
      <p>Offers free medical services to patients of all ages</p>
    </div>
  </div>
  <div class="card">
    <%=image_tag('partners/share-the-harvest-logo.jpg') %>
    <div class="caption">
      <h3><%= link_to 'Share the Harvest', "http://sharetheharvestguilfordcounty.org/" %></h3>
      <p>Redistibutes fresh produce to those in need</p>
    </div>
  </div>
  <div class="card">
    <%=image_tag('partners/big-logo.jpg') %>
    <div class="caption">
      <h3><%= link_to 'Bicycling In Greensboro', "http://www.bikegso.org" %></h3>
      <p>Offers bike repair and bikes for transportation</p>
    </div>
  </div>
  <div class="card">
    <%=image_tag('partners/cone-logo.jpg') %>
    <div class="caption">
      <h3><%= link_to 'Congregational Nurses', "http://www.conehealth.com/community/congregational-nurse-program/" %></h3>
      <p>Substance abuse and mental health support</p>
    </div>
  </div>
  <div class="card">
    <%=image_tag('partners/tgs-logo.png') %>
    <div class="caption">
      <h3><%= link_to 'Tiny Goat', "http://www.tinygoatstudio.com" %>we</h3>
      <p>Design and web services for nonprofits</p>
    </div>
  </div>
</div>
