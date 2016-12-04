RSpec.shared_examples "a measurable object" do |measurement, measurement_methods|
  measurement_methods.each do |measurement_method|
    it "should return #{measurement} from ##{measurement_method}" do
      expect(subject.send(measurement_method)).to eq(measurement)
    end
  end
end