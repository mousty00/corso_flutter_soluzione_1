# Exam

Here are the requirements for you to go and put yourself to the test!

## Rick And Morty explorer

Your objective is to implement a "Rick and Morty explore and save" application.
(you can put the whole application under a /rickandmorty route and call it a day)

## Grading criteria (but also: real life criteria)

Before anything, and considering our time is limited, we should get our priorities straight.

We cannot possibly focus on UI too much in a short window of time. What *really* counts is the following "priority order":
    1. the app satisfies the basic requirements and functionalities
    2. the app doesn't drive our users mad (e.g. accidental button pressing doesn't lead to irremediable actions)
    3. the app is aesthetically pleasing (ask yourself: would you publish this application on the stores under your name?)

Finally: the UX/UI design choices are up to you, just make sure the main requirements are satisfied, first.

**Yes, you can get help from your favorite LLM (in-IDE).**

## The API

Our application will fetch some data from a publicly available REST API about Rick and Morty.
    https://rickandmortyapi.com/documentation/#rest

Your first focus should be reading this document, and then reading the API docs so that you understand which API you should fetch, and how you should handle them.

## The Requirements.

Here's what we need to build app the app.

### requirement 1: exploring

The application should open up showing all rick and morty characters in a grid.
There are >800 characters in this show!
We must exploit some sort of pagination to avoid `429` responses from the server and/or to avoid overloads on the client.
There should be a dedicated endpoint for this requirement.

Each grid element must contain the character's:
    - name, gender, species
    - image

### requirement 2: details

Each grid element is clickable: clicking on a character leads to its "detail page" which shows everything about this character.

There should be a dedicated endpoint for this requirement.

### requirement 3: saving

We should be able to save a character for later, including a "review".
This means: when saving a character, we don't just add it to a favorite list.

We want to create a new model that includes:
    - the character itself
    - a rating (1-5), meaning: "how much I like it"
    - a comment (mandatory)

We shouldn't be able to add the same character multiple times; instead, it should be possible to just edit its "review", if previously added to our list.

Finally, it should be possible to just remove a review from our list.

**Note 1**. The add, edit and delete actions can be performed from the "grid" page (via a `...` button) and from the "detail" page (via some action icons on top right).
**Note 2**. The home page should show (on top right) a bookmark icon with a count badge (showing how many characters we've reviewed); clicking on the icon leads to the saved characters list (a simple list, no image previews, and a `...` button that allows us to edit or delete the item)
