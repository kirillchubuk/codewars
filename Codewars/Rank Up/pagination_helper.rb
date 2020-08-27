#https://www.codewars.com/kata/515bb423de843ea99400000a/train/ruby
class PaginationHelper
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  attr_reader :collection, :items_per_page

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end

  # returns the number of pages
  def page_count
    (item_count.to_f / @items_per_page).ceil
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    index = @collection[page_index * items_per_page...page_index * items_per_page + items_per_page]
    index ? index.size : -1
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if item_index >= item_count || item_index.negative?
    item_index / @items_per_page
  end
end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
p helper
p helper.page_count # should == 2
p helper.item_count # should == 6
p helper.page_item_count(0)  # should == 4
p helper.page_item_count(1) # last page - should == 2
p helper.page_item_count(2) # should == -1 since the page is invalid
#
# # page_ndex takes an item index and returns the page that it belongs on
p helper.page_index(5) # should == 1 (zero based index)
p helper.page_index(2) # should == 0
p helper.page_index(20) # should == -1
p helper.page_index(-10) # should == -1 because negative indexes are invalid

#https://www.codewars.com/kata/515bb423de843ea99400000a/solutions/ruby
=begin
# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection.each_slice(items_per_page).to_a
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.flatten.length
  end

  # returns the number of pages
  def page_count
    @collection.length
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    @collection[page_index].length rescue -1
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if item_index >= item_count || item_index < 0
    item_index / @items_per_page
  end
end
=end

=begin
class PaginationHelper
  attr_reader :collection, :items_per_page

  def initialize(collection, items_per_page)
    @items_per_page = items_per_page
    @collection = collection.each_slice(items_per_page).to_a
  end

  def item_count
    collection.flatten.size
  end

  def page_count
    collection.size
  end

  def page_item_count(page_index)
    collection[page_index]&.size || -1
  end

  def page_index(item_index)
    return -1 unless (0...item_count).include?(item_index)
    item_index / items_per_page
  end
end
=end
