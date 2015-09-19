# curatorship
By [Scott Macpherson](https://github.com/scottmacphersonmusic)
### Description
**curatorship** provides a simple interface for connecting artists with venues via concerts.
### Usage
This app has three resources: `artists`, `venues` and `concerts`.  You can create, read, update or destroy any of them.

Artist attributes:
- `name`
- `genre`
- `draw`  *(average concert attendance)*

Venue attributes:
- `name`
- `capacity`
- `all_ages` *(yes or no)*

Concert attributes:
- `concert_date`
- `artist_id`
- `venue_id`

*Artists have many Venues through Concerts*

*Venues have many Artists through Concerts*

*Concerts belong to both Artists and Venues*

### Credit
The following documentation was referred to extensively for guidance:
- [Form Helpers](http://guides.rubyonrails.org/form_helpers.html)
- [Date Helpers](http://api.rubyonrails.org/classes/ActionView/Helpers/DateHelper.html)
