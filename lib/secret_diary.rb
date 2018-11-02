class SecretDiary

  def initialize
    @lock = true
  end

  def lock
    @lock = true
    return "Diary is locked"
  end

  def unlock
    @lock = false
  end

  def add_entry
    if @lock == true
      fail "Error: Diary is locked"
    elsif @lock == false
      puts "you're in!"
    end
  end

  def get_entries
    if @lock == true
      fail "Error: Diary is locked"
    elsif @lock == false
      puts "you're in!"
    end
  end
end
