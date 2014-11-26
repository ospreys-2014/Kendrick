# Review

## Startup
So far, so good. The app gets off the ground without a problem.

## Design

I like how simple it is, and the popup login is nice. I'd like to see some more uniformity around the size of the genre boxes, and the UI for commenting / reviews is a little odd given the centrality of this feature in your app's purpose.

## Tests

A missing `end` keeps the specs (and the app?) from running currently. When they do run, you have some good coverage here, so big ups! That said, for the most part you are testing for validations instead of backend logic.

You've also pushed a few active-but-broken tests to master. Broken tests on master are **bad**. Better to (a) fix the code so that the tests pass, particularly if they are important to functionality or (b) put them in pending or move them to a different feature branch if they haven't yet been implemented. Broken tests on master screw over the whole team.

I was glad to see simplecov set up. Huzzah! Your travis build was setup, but it wasn't running because your `travis.yml` file didn't make sense. CI is a great way to catch things (like that pesky missing `end` and broken tests) and keep them caught.

## Core Function

The rating feature that makes your app beneficial is currently broken. The AJAX for the comments is also broken, but a refresh pulls them up. The biggest issue with your ratings right now is that you're holding a rating not as an integer (as the 1-5 radio buttons on the profile page would suggest), but instead as a boolean true or false. Booleans are very difficult to add up and divide.

Again, you have a lot of tests checking oft-used, well-trusted ActiveRecord validations, but no unit tests around ratings at all, an arguably important part of your app that holds a lot of the custom code you've built out. Those unit tests - and tests around your core functionality in general - would have probably been a better use of your time.

## Models

Not a lot to review here - mostly associations and validations - but I liked seeing that you created your own validation for ratings. The implementation of rating calculation was almost there and is well organized. Good work!

## Controllers

Permit associations in your strong params so that you don't have to specifically find associations from other classes. Otherwise, a solid showing. Nice and focused.

## Views

Nice use of partials. Don't use the `<center>` element. Instead use CSS. In general, the HTML use here is week. Don't use `<p>` elements for labels and text fields.

Additionally, instead of listing each genre in your sign in page, iterate through them

## JS & CSS

Not much to look at wrt JS. Definitely something to work on.

The `application.css` file is a manifest that is merely meant to point to the other files that should be added to the asset pipeline and the order they should be added in. Putting custom CSS or (worse!) ALL OF BOOTSTRAP in that file is a bad practice. Move bootstrap to vendor assets and refer to it from there. Similarly, move your custom css to custom files in your `app/assets/stylesheets` folder.

## Migrations

Should a user be created without a username? Should a genre be in your db without a name by which to identify it? Well, if not, then add some constraints to your migrations.
