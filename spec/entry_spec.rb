# It uses a require_relative to load our entry model for testing. This loads files using a relative path
# which is a path that's relative to the file that contains the require_relative statement.
# we'll use require method to load external dependencies
require_relative '../models/entry'
 # #1 We're saying it's a spec file and it tests Entry
 RSpec.describe Entry do
   # #2 we use describe to give our test structure. To communicate that specs test Entry attributes.
   describe "attributes" do
     let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }
     # #3 each it represent a unique test
     it "responds to name" do
       # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       # #4 each RSpec test ends with one or more expect method, which we use to declare expectations for the test. If expectations are met, the test passes.
# expect(entry).to respond_to(:name) checks whether entry.name is valid. RSpec provides us with a set of methods, such as expect, to, and respond_to. This is domain-specific language(DSL).
       expect(entry).to respond_to(:name)
     end

     it "reports its name" do
       # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry.name).to eq('Ada Lovelace')
     end

     it "responds to phone number" do
       # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry).to respond_to(:phone_number)
     end

     it "reports its phone_number" do
       # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry.phone_number).to eq('010.012.1815')
     end

     it "responds to email" do
       # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry).to respond_to(:email)
     end
     it "reports its email" do
       # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expect(entry.email).to eq('augusta.king@lovelace.com')
      end
   end

   # #5
   describe "#to_s" do
     it "prints an entry as a string" do
       entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
       expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
   # #6
       expect(entry.to_s).to eq(expected_string)
     end
   end
 end
