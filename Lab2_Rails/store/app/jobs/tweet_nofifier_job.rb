class TweetNofifierJob < ApplicationJob
  # aregane (heigh periority) => once created run
  # cdqueue , squeue => handel worker ??
  queue_as :default

  def perform(*args)
    # Do something later
    TweetNotifier.new(tweet).notify
  end
end
