require 'csv'

class StructCSV
  attr_accessor :csv_ary

  def initialize(dir_path)
    @csv = CSV.read(dir_path, :encoding => "windows-1251:utf-8")
    @csv_ary = convert_csv_to_objects(@csv)
  end

  def convert_csv_to_objects(ary)
    ary.shift

    ary.map! do |row|
      process_row(row)
    end

    return ary
  end

  def process_row(row)
    obj = OpenStruct.new
    obj.suit    = row[0]
    obj.name    = row[1]
    obj.meaning = row[2]
    obj.number  = row[3]
    obj.astrology = row[4]
    return obj
  end
end

