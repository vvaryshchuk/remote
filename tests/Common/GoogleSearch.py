from PageObjectLibrary import PageObject

from consts import (
    SITE_URL,
    SEARCH_QUERY,
    SEARCH_FIELD
)


class GoogleSearch(PageObject):
    """Basic class for google search page functionality"""

    def go_to_google_search_page(self):
        """Verify that the page loaded completely."""
        self.selib.go_to(SITE_URL)

    def verify_login_page_url(self):
        """Verify that current page URL matches the expected URL."""
        self.selib.location_should_contain(SITE_URL)

    def enter_search_query(self, query=SEARCH_QUERY):
        """Type the given text into the username field """
        self.selib.input_text(SEARCH_FIELD, query)
