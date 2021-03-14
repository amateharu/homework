class Notification

  def initialize(note, recipient, sender=nil )
    puts "***\nNew notification#{' from '+sender.full_name if sender} to {recipient.full_name}: {note}"
  end

end

