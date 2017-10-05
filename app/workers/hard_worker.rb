
class HardWorker< ActiveJob::Base
  queue_as :default

  def perform(id)
    loc = Location.find_by(id: id)
    res = Reservation.find_by(location_id: id)
    if res && loc
      res.destroy
      loc.destroy
      puts "Location with id #{id} was deleted"
    end
  end
end
