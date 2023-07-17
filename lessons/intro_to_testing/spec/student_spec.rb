# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      penelope = Student.new("Penelope")

      expect(penelope).to be_an_instance_of(Student)
    end
  end

    # test it has a name
  describe "#name" do
    it "returns the name of the student" do
      penelope = Student.new("Penelope")
      noelle = Student.new("Noelle")
        
      expect(penelope.name).to eq("Penelope")
      expect(noelle.name).to eq("Noelle")
    end
  end
  

    # test it has cookies
  describe "#cookies" do
    it "should start with an empty cookies array" do
      penelope = Student.new("Penelope")
    
      expect(penelope.cookies).to eq([])
    end
  end
    # test it can add cookies
    describe "#add_cookie" do
      it "should add a cooke to the cookies array" do
        penelope = Student.new("Penelope")

        penelope.add_cookie("Chocolate Chunk")
        penelope.add_cookie("Snickerdoodle")

        expect(penelope.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
      end
    end
end
