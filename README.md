<h1>8-Bit Flight Booker</h1>
<p>This is a project from the <strong>Advanced Forms and Active Record</strong> section in The Odin Project's Ruby on Rains curriculum.</p>
<p>The original project can be found here: <a href="https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker">Flight Booker Project</a></p>
<h2>Functionality</h2>
<ul>
<li>Book one-way flights on a specific date of August 2022 for up to four passengers.</li>
<li>Associations between 4 models Airport, Flight, Passenger, Booking.</li>
<li>Prepopulate drop down menus with data from multiple models.</li>
<li>Usage of nested attributes (submitting to multiple models with a single click).</li>
<li>Seeding of 8 hardcoded airports and 3,400 flights using the Faker gem.</li>
<li>RSpec feature tests using Capybara and FactoryBot.</li>
<li>Styled using Bootstrap and custom CSS.</li>
<li>Error handling (see Heroku exception).</li>
</ul>
<h2>Live Demo</h2>
<p><span style="text-decoration: underline;">Heroku exception</span></p>
<p>There is one error handling bug on the Heroku demo. As I developed the app with SQLite and Heroku uses PostgreSQL, if a user submits the form on the home page, the site will break. However, if you clone the app locally, an alert will appear notifying the user that there are "No flights found. Please make sure you have selected an option for each field." I will be building my next apps with PostgreSQL :)</p>
<p><a href="https://eight-bit-flight-booker.herokuapp.com/">Link to Heroku Live Demo</a></p>
<h2>Screenshots</h2>
<h3>Landing/Search Page</h3>
<p><img src="Search-Home-Page.png" alt="" width="650" height="350" /></p>
<h3>Search Results</h3>
<p><img src="Search-results-page.png" alt="" width="650" height="350" /></p>
<h3>Passenger Information</h3>
<p><img src="Booking-passenger-page.png" alt="" width="650" height="350" /></p>
<h3>Booked Flight Information</h3>
<p><img src="booked-flight-page.png" alt="" width="650" height="350" /></p>
<h2>Local Installation</h2>
<p>Clone the repository to your machine:</p>
<p>&nbsp;&nbsp;&nbsp; git clone <a href="mailto:git@github.com:BrentBarnes/Odin-Flight-Booker.git">git@github.com:BrentBarnes/Odin-Flight-Booker.git</a></p>
<p>Then, install the needed gems:</p>
<<<<<<< HEAD
```
bundle install
```
=======
    bundle install
>>>>>>> 8c86f8571338fd4b4936de85204b041f9e7604d8
<p>Next, migrate the database:</p>
<p>&nbsp;&nbsp;&nbsp; rails db:migrate</p>
<p>Load sample airports and flights:</p>
<p>&nbsp;&nbsp;&nbsp; rails db:seed</p>
<p>Finally, on root path run a local server:</p>
<p>&nbsp;&nbsp;&nbsp; rails server</p>
<p>Open browser to view application:</p>
<p>&nbsp;&nbsp;&nbsp; localhost:3000</p>
