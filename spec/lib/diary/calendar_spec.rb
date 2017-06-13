require 'diary'
require 'date'

describe Calendar do
  describe '.next_hour' do
    context 'given an horary of 9:00' do
      cal = Calendar.new('2017-06-13')
      it 'return 9:00' do
        expect(cal.next_hour).to eql('9:00')
      end
      it 'return 10:00' do
        expect(cal.next_hour).to eql('10:00')
      end
      it 'return 11:00' do
        expect(cal.next_hour).to eql('11:00')
      end
    end
  end

  describe '.hours' do
    context 'given an calendar 12:00' do
      it 'return 9:00' do
        cal = Calendar.new('2017-06-13')
        cal.next_hour
        cal.next_hour
        cal.next_hour
        expect(cal.hours.length).to eql(6)
      end
    end
  end

  describe '.next_hour' do
    context 'given an limit hour' do
      it 'return nil' do
        cal = Calendar.new('2017-06-13')
        cal.next_hour
        cal.next_hour
        cal.next_hour
        cal.next_hour
        cal.next_hour
        cal.next_hour
        cal.next_hour
        cal.next_hour
        cal.next_hour

        expect(cal.next_hour).to eql(nil)
      end
    end
  end

end