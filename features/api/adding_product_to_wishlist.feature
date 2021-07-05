@api_wishlist
Feature: Adding a product to wishlist
    Background:
        Given the store operates on a single channel in "United States"

    @api
    Scenario: Adding a product to wishlist as an anonymous user
        Given Anonymous user has a wishlist
        And the store has a product "Jack Daniels Gentleman" priced at "$10.00"
        When Anonymous user adds product "Jack Daniels Gentleman" to the wishlist
        Then Anonymous user should have product "Jack Daniels Gentleman" in the wishlist
    @api
    Scenario: Adding a product variant to wishlist as an anonymous user
        Given Anonymous user has a wishlist
        And the store has a product "Jack Daniels Gentleman" priced at "$10.00"
        And the product "Jack Daniels Gentleman" has a "700ML" variant priced at "$10.00"
        When Anonymous user adds "700ML" product variant to the wishlist
