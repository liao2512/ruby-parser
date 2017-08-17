require_relative 'visit'

class Counter
  attr_accessor :visits

  def initialize(file)
    @visits = []
    get_visits(file)
  end

  def sort_total_visits
    sort get_unique_paths.map { |path, ip| [path, ip.map(&:ip).length] }
  end

  def sort_unique_visits
    sort get_unique_paths.map { |path, ip| [path, ip.map(&:ip).uniq.count] }
  end

  private

  def get_visits(file)
    File.read(file).each_line do |line|
      path = line.split(" ")[0]
      ip   = line.split(" ")[1]
      @visits << Visit.new(path, ip)
    end
  end

  def get_unique_paths
    @unique_paths = self.visits.group_by { |visit| visit.path}
  end

  def sort array
    array.sort { |a, b| b[1] <=> a[1] }
  end
end