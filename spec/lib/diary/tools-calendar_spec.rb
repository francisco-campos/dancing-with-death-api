require 'diary'
require 'date'

describe ToolsCalendar do
  describe '.convert_hour' do
    context "given an hour in string" do
      it 'return 900' do
        expect(ToolsCalendar.convert_hour('9:00')).to eql(900)
      end
      it 'return 1600' do
        expect(ToolsCalendar.convert_hour('16:00')).to eql(1600)
      end
    end
  end

  describe '.convert_date' do
    context "given an string type: yyyy-mm-dd" do
      it 'return 10 of December of 2017' do
        date = Date.new(2017,12,10)
        expect(ToolsCalendar.convert_date('2017-12-10')).to eql(date)
      end
      it 'return 15 of July of 1984' do
        date = Date.new(1984,07,15)
        expect(ToolsCalendar.convert_date('1984-07-15')).to eql(date)
      end
    end
  end

  describe '.convert_date_to_s' do
    context "given an Date type: yyyy-mm-dd" do
      it 'return 10 of December of 2017' do
        date = Date.new(2017,12,10)
        expect(ToolsCalendar.convert_date_to_s(date)).to eql('2017-12-10')
      end
      it 'return 15 of July of 1984' do
        date = Date.new(1984,07,15)
        expect(ToolsCalendar.convert_date_to_s(date)).to eql('1984-07-15')
      end
    end
  end

  describe '.search_appointment' do
    context "given an Date: 2017-01-01 and 9:00" do
      it 'return null' do
        date = Date.new(2017,01,01)
        expect(ToolsCalendar.search_appointment(date,'09:00')).to eql(null)
      end
    end
  end


end