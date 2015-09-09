require('rspec')
require('title_case')

describe('String#title_case') do

  it("capitalizes the first letter of one word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes all words in a multi word title") do
    expect(("the color purple").title_case()).to(eq("The Color Purple"))
  end

  it("does not capitalize designated words") do
    expect(("the lord of the rings").title_case()).to(eq("The Lord of the Rings"))
  end

  it("does not capitalize designated words") do
    expect(("the story of the lost child and his dog").title_case()).to(eq("The Story of the Lost Child and His Dog"))
  end

  it("capitalizes the first word of the title") do
    expect(("a boy and his dog").title_case()).to(eq("A Boy and His Dog"))
  end

  it("handles non-letter characters") do
    expect(("99 bottles of 47 beers").title_case()).to(eq("99 Bottles of 47 Beers"))
  end

  it("manages all upper-case entries") do
    expect(("LORD OF THE FLIES").title_case()).to(eq("Lord of the Flies"))
  end

  it("manages mixed case entries") do
    expect(("lOrD OF ThE FlIeS").title_case()).to(eq("Lord of the Flies"))
  end

  it("manages unique case entries") do
    expect(("here's to beowulf and McDuff and O'Malley").title_case()).to(eq("Here's to Beowulf and McDuff and O'Malley"))
  end

end
