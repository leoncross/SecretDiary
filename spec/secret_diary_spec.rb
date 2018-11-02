require "secret_diary.rb"

describe SecretDiary do

  it "responds to lock" do
    expect(subject).to respond_to (:lock)
  end

  describe "#add_entry" do
    # diary = SecretDiary.new
    it "throws up an error - diary is locked" do
      expect {SecretDiary.new.add_entry}.to raise_error ("Error: Diary is locked")
    end
  end

  it "responds when we have unlocked the diary" do
    diary = SecretDiary.new
    diary.unlock
      expect(diary).to respond_to (:add_entry)
  end

  it "locks the diary when called .lock" do
    subject.unlock
    expect(subject.lock).to eq ("Diary is locked")
    end

end
